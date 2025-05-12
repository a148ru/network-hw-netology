# Создать пустую VPC.
resource "yandex_vpc_network" "netology" {
  name        = var.vpc_name
}

# Создать в VPC subnet с названием public,
# сетью 192.168.10.0/24
resource "yandex_vpc_subnet" "public" {
  name           = var.sn_public.name
  v4_cidr_blocks = var.sn_public.cidr
  zone           = var.default_zone
  network_id     = yandex_vpc_network.netology.id
}

# Создать в этой подсети NAT-инстанс,
# присвоив ему адрес 192.168.10.254. 
# В качестве image_id использовать fd80mrhj8fl2oe87o4e1.

resource "yandex_compute_image" "nat-instance-ubuntu" {
  source_family = var.nat_disk.image_family
}

resource "yandex_compute_disk" "boot-disk-nat" {
  name     = var.nat_disk.name
  type     = var.nat_disk.type
  zone     = var.default_zone
  size     = var.nat_disk.size
  image_id = yandex_compute_image.nat-instance-ubuntu.id
}

resource "yandex_compute_instance" "nat-instance" {
  name        = var.vm_nat.name
  platform_id = var.platform
  zone        = var.default_zone

  resources {
    core_fraction = var.vm_nat.core_fraction
    cores         = var.vm_nat.cores
    memory        = var.vm_nat.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-nat.id
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.public.id
    nat                = true
    ip_address         = var.vm_nat.ip_address
  }

  metadata = {
    user-data = data.template_file.cloudinit.rendered
  }
}

# Создать в этой публичной подсети виртуалку с публичным
# IP, подключиться к ней и убедиться, что есть доступ к
# интернету.
resource "yandex_compute_image" "ubuntu" {
  source_family = var.disk_image
}

resource "yandex_compute_disk" "boot-disk-1" {
  name     = var.disk_1.name
  type     = var.disk_1.type
  zone     = var.default_zone
  size     = var.disk_1.size
  image_id = yandex_compute_image.ubuntu.id
}

resource "yandex_compute_instance" "test-vm-1" {
  name        = var.test_vm_1.name
  platform_id = var.platform
  zone        = var.default_zone

  resources {
    core_fraction = var.test_vm_1.core_fraction
    cores         = var.test_vm_1.cores
    memory        = var.test_vm_1.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-1.id
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.public.id
    nat = true
  }

  metadata = {
    user-data = data.template_file.cloudinit.rendered
  }
}


# Создать в VPC subnet с названием private, сетью
# 192.168.20.0/24.
resource "yandex_vpc_subnet" "private" {
  name           = var.sn_private.name
  v4_cidr_blocks = var.sn_private.cidr
  zone           = var.default_zone
  network_id     = yandex_vpc_network.netology.id
  route_table_id = yandex_vpc_route_table.rt.id
}

# Создать route table. Добавить статический маршрут,
# направляющий весь исходящий трафик private сети в
# NAT-инстанс.
resource "yandex_vpc_route_table" "rt" {
  network_id = yandex_vpc_network.netology.id

  static_route {
    destination_prefix = "0.0.0.0/0"
    next_hop_address = var.vm_nat.ip_address
  }
}
# Создать в этой приватной подсети виртуалку с внутренним
# IP, подключиться к ней через виртуалку, созданную ранее,
# и убедиться, что есть доступ к интернету.
resource "yandex_compute_disk" "boot-disk-2" {
  name     = var.disk_2.name
  type     = var.disk_2.type
  zone     = var.default_zone
  size     = var.disk_2.size
  image_id = yandex_compute_image.ubuntu.id
}

resource "yandex_compute_instance" "test-vm-2" {
  name        = var.test_vm_2.name
  platform_id = var.platform
  zone        = var.default_zone

  resources {
    core_fraction = var.test_vm_2.core_fraction
    cores         = var.test_vm_2.cores
    memory        = var.test_vm_2.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk-2.id
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.private.id
    nat = false
  }

  metadata = {
    user-data = data.template_file.cloudinit.rendered
  }
}
