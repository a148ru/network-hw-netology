###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "vpc_name" {
  type = string
  default = "netology"
}
variable "sn_public" {
  type = object({
    name = string,
    cidr = list(string)
  })
  default = {
    name = "public",
    cidr = [ "192.168.10.0/24" ]
  }
}
variable "sn_private" {
  type = object({
    name = string,
    cidr = list(string)
  })
  default = {
    name = "private",
    cidr = [ "192.168.20.0/24" ]
  }
}
variable "platform" {
  type = string
  default = "standard-v3"
}
variable "vm_nat" {
  type = object({
    name = string,
    cores = number,
    memory = number,
    core_fraction = number,
    ip_address = string
  })
  default = {
    name = "nat-instance",
    cores = 2,
    core_fraction = 20,
    memory = 2
    ip_address = "192.168.10.254"
  }
}
variable "nat_disk" {
  type = object({
    name = string,
    type = string,
    size = number,
    image_family = string
  })
  default = {
    name = "boot-disk-nat",
    type = "network-hdd",
    size = 20,
    image_family = "nat-instance-ubuntu" 
    # image_family = "nat-instance-ubuntu-2204"
  }
}
variable "test_vm_1" {
  type = object({
    name = string,
    cores = number,
    memory = number,
    core_fraction = number
  })
  default = {
    name = "test-1",
    cores = 2,
    core_fraction = 20,
    memory = 2
  }
}
variable "disk_image" {
  type = string
  default = "ubuntu-1804-lts" 
  # default = "ubuntu-2404-lts-oslogin"
}
variable "disk_1" {
  type = object({
    name = string,
    type = string,
    size = number
  })
  default = {
    name = "boot-disk-1",
    type = "network-hdd",
    size = 20
  }
}
variable "test_vm_2" {
  type = object({
    name = string,
    cores = number,
    memory = number,
    core_fraction = number
  })
  default = {
    name = "test-2",
    cores = 2,
    core_fraction = 20,
    memory = 2
  }
}
variable "disk_2" {
  type = object({
    name = string,
    type = string,
    size = number
  })
  default = {
    name = "boot-disk-2",
    type = "network-hdd",
    size = 20
  }
}