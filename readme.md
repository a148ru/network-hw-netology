Домашняя работа

![файлы](./src/)

1. terraform apply

```bash
 ~/Documents/Netology/DevOps/org/hw-org/src  terraform apply
data.template_file.cloudinit: Reading...
data.template_file.cloudinit: Read complete after 0s [id=866596914e92b7c19e47265fa28a158c823be030d4dc47738219a80a425e4dcf]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
following symbols:
  + create

Terraform will perform the following actions:

  # yandex_compute_disk.boot-disk-1 will be created
  + resource "yandex_compute_disk" "boot-disk-1" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = (known after apply)
      + id          = (known after apply)
      + image_id    = (known after apply)
      + name        = "boot-disk-1"
      + product_ids = (known after apply)
      + size        = 20
      + status      = (known after apply)
      + type        = "network-hdd"
      + zone        = "ru-central1-b"

      + disk_placement_policy (known after apply)

      + hardware_generation (known after apply)
    }

  # yandex_compute_disk.boot-disk-2 will be created
  + resource "yandex_compute_disk" "boot-disk-2" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = (known after apply)
      + id          = (known after apply)
      + image_id    = (known after apply)
      + name        = "boot-disk-2"
      + product_ids = (known after apply)
      + size        = 20
      + status      = (known after apply)
      + type        = "network-hdd"
      + zone        = "ru-central1-b"

      + disk_placement_policy (known after apply)

      + hardware_generation (known after apply)
    }

  # yandex_compute_disk.boot-disk-nat will be created
  + resource "yandex_compute_disk" "boot-disk-nat" {
      + block_size  = 4096
      + created_at  = (known after apply)
      + folder_id   = (known after apply)
      + id          = (known after apply)
      + image_id    = (known after apply)
      + name        = "boot-disk-nat"
      + product_ids = (known after apply)
      + size        = 20
      + status      = (known after apply)
      + type        = "network-hdd"
      + zone        = "ru-central1-b"

      + disk_placement_policy (known after apply)

      + hardware_generation (known after apply)
    }

  # yandex_compute_image.nat-instance-ubuntu will be created
  + resource "yandex_compute_image" "nat-instance-ubuntu" {
      + created_at      = (known after apply)
      + folder_id       = (known after apply)
      + id              = (known after apply)
      + min_disk_size   = (known after apply)
      + os_type         = (known after apply)
      + pooled          = (known after apply)
      + product_ids     = (known after apply)
      + size            = (known after apply)
      + source_disk     = (known after apply)
      + source_family   = "nat-instance-ubuntu"
      + source_image    = (known after apply)
      + source_snapshot = (known after apply)
      + source_url      = (known after apply)
      + status          = (known after apply)

      + hardware_generation (known after apply)
    }

  # yandex_compute_image.ubuntu will be created
  + resource "yandex_compute_image" "ubuntu" {
      + created_at      = (known after apply)
      + folder_id       = (known after apply)
      + id              = (known after apply)
      + min_disk_size   = (known after apply)
      + os_type         = (known after apply)
      + pooled          = (known after apply)
      + product_ids     = (known after apply)
      + size            = (known after apply)
      + source_disk     = (known after apply)
      + source_family   = "ubuntu-1804-lts"
      + source_image    = (known after apply)
      + source_snapshot = (known after apply)
      + source_url      = (known after apply)
      + status          = (known after apply)

      + hardware_generation (known after apply)
    }

  # yandex_compute_instance.nat-instance will be created
  + resource "yandex_compute_instance" "nat-instance" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "user-data" = <<-EOT
                #cloud-config
                users:
                  - name: ubuntu
                    groups: sudo
                    shell: /bin/bash
                    sudo: ["ALL=(ALL) NOPASSWD:ALL"]
                    ssh_authorized_keys:
                      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMk9vrkXYEC0Sm0DBtMXuSTWSH771egCT/P35D2ll6f a148ru@polaris134
                
                package_update: true
                package_upgrade: false
                # packages:
                #  - vim
                #  - nginx
            EOT
        }
      + name                      = "nat-instance"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-b"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params (known after apply)
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = "192.168.10.254"
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 20
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.test-vm-1 will be created
  + resource "yandex_compute_instance" "test-vm-1" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "user-data" = <<-EOT
                #cloud-config
                users:
                  - name: ubuntu
                    groups: sudo
                    shell: /bin/bash
                    sudo: ["ALL=(ALL) NOPASSWD:ALL"]
                    ssh_authorized_keys:
                      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMk9vrkXYEC0Sm0DBtMXuSTWSH771egCT/P35D2ll6f a148ru@polaris134
                
                package_update: true
                package_upgrade: false
                # packages:
                #  - vim
                #  - nginx
            EOT
        }
      + name                      = "test-1"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-b"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params (known after apply)
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 20
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy (known after apply)
    }

  # yandex_compute_instance.test-vm-2 will be created
  + resource "yandex_compute_instance" "test-vm-2" {
      + created_at                = (known after apply)
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + gpu_cluster_id            = (known after apply)
      + hardware_generation       = (known after apply)
      + hostname                  = (known after apply)
      + id                        = (known after apply)
      + maintenance_grace_period  = (known after apply)
      + maintenance_policy        = (known after apply)
      + metadata                  = {
          + "user-data" = <<-EOT
                #cloud-config
                users:
                  - name: ubuntu
                    groups: sudo
                    shell: /bin/bash
                    sudo: ["ALL=(ALL) NOPASSWD:ALL"]
                    ssh_authorized_keys:
                      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOMk9vrkXYEC0Sm0DBtMXuSTWSH771egCT/P35D2ll6f a148ru@polaris134
                
                package_update: true
                package_upgrade: false
                # packages:
                #  - vim
                #  - nginx
            EOT
        }
      + name                      = "test-2"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v3"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-b"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params (known after apply)
        }

      + metadata_options (known after apply)

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = false
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy (known after apply)

      + resources {
          + core_fraction = 20
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy (known after apply)
    }

  # yandex_vpc_network.netology will be created
  + resource "yandex_vpc_network" "netology" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "netology"
      + subnet_ids                = (known after apply)
    }

  # yandex_vpc_route_table.rt will be created
  + resource "yandex_vpc_route_table" "rt" {
      + created_at = (known after apply)
      + folder_id  = (known after apply)
      + id         = (known after apply)
      + labels     = (known after apply)
      + network_id = (known after apply)

      + static_route {
          + destination_prefix = "0.0.0.0/0"
          + next_hop_address   = "192.168.10.254"
            # (1 unchanged attribute hidden)
        }
    }

  # yandex_vpc_subnet.private will be created
  + resource "yandex_vpc_subnet" "private" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "private"
      + network_id     = (known after apply)
      + route_table_id = (known after apply)
      + v4_cidr_blocks = [
          + "192.168.20.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-b"
    }

  # yandex_vpc_subnet.public will be created
  + resource "yandex_vpc_subnet" "public" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "public"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "192.168.10.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-b"
    }

Plan: 12 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + nat-instance-ip            = (known after apply)
  + test-vm-1-instance-pub-ip  = (known after apply)
  + test-vm-2-instance-priv-ip = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

yandex_vpc_network.netology: Creating...
yandex_compute_image.nat-instance-ubuntu: Creating...
yandex_compute_image.ubuntu: Creating...
yandex_vpc_network.netology: Creation complete after 4s [id=enp1rjqj3r9ca78m3tei]
yandex_vpc_subnet.public: Creating...
yandex_vpc_route_table.rt: Creating...
yandex_vpc_subnet.public: Creation complete after 0s [id=e2lscpc3qlq3sdld10lc]
yandex_vpc_route_table.rt: Creation complete after 1s [id=enp58gjavm8favsjudul]
yandex_vpc_subnet.private: Creating...
yandex_vpc_subnet.private: Creation complete after 1s [id=e2llmld576tfhcvoir3a]
yandex_compute_image.ubuntu: Creation complete after 8s [id=fd81ecc14klbii2dle07]
yandex_compute_disk.boot-disk-1: Creating...
yandex_compute_disk.boot-disk-2: Creating...
yandex_compute_image.nat-instance-ubuntu: Creation complete after 9s [id=fd8epsd18nn108tttann]
yandex_compute_disk.boot-disk-nat: Creating...
yandex_compute_disk.boot-disk-2: Still creating... [10s elapsed]
yandex_compute_disk.boot-disk-1: Still creating... [10s elapsed]
yandex_compute_disk.boot-disk-nat: Still creating... [10s elapsed]
yandex_compute_disk.boot-disk-2: Creation complete after 17s [id=epd2v9f6tg1jqt099ut9]
yandex_compute_instance.test-vm-2: Creating...
yandex_compute_disk.boot-disk-nat: Creation complete after 18s [id=epdlb1b71kqcso9ror4v]
yandex_compute_instance.nat-instance: Creating...
yandex_compute_disk.boot-disk-1: Creation complete after 20s [id=epda36drt0rnh5t6hf3h]
yandex_compute_instance.test-vm-1: Creating...
yandex_compute_instance.test-vm-2: Still creating... [10s elapsed]
yandex_compute_instance.nat-instance: Still creating... [10s elapsed]
yandex_compute_instance.test-vm-1: Still creating... [10s elapsed]
yandex_compute_instance.test-vm-2: Still creating... [20s elapsed]
yandex_compute_instance.nat-instance: Still creating... [20s elapsed]
yandex_compute_instance.test-vm-1: Still creating... [20s elapsed]
yandex_compute_instance.test-vm-2: Creation complete after 25s [id=epdgekkom79631bjtqqm]
yandex_compute_instance.test-vm-1: Creation complete after 28s [id=epdqr1hmfuc9avkdiq47]
yandex_compute_instance.nat-instance: Creation complete after 29s [id=epdmivv48cpgu33bd0ne]

Apply complete! Resources: 12 added, 0 changed, 0 destroyed.

Outputs:

nat-instance-ip = "158.160.82.199"
test-vm-1-instance-pub-ip = "158.160.71.123"
test-vm-2-instance-priv-ip = "192.168.20.8"
 ~/Documents/Netology/DevOps/org/hw-org/src  
 ```
 
 2. vm с публичным адресом

 ```bash
  ~/Documents/Netology/DevOps/org/hw-org/src  ssh ubuntu@158.160.71.123
The authenticity of host '158.160.71.123 (158.160.71.123)' can't be established.
ED25519 key fingerprint is SHA256:oa5xct3rSyH3mrhbwmFqwDVAMsodRkVVKK1KggUvdeg.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '158.160.71.123' (ED25519) to the list of known hosts.
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-213-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

  System information as of Mon May 12 20:48:31 UTC 2025

  System load:  0.35              Processes:           91
  Usage of /:   7.6% of 18.73GB   Users logged in:     0
  Memory usage: 6%                IP address for eth0: 192.168.10.23
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

Expanded Security Maintenance for Infrastructure is not enabled.

0 updates can be applied immediately.

121 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04



The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ubuntu@epdqr1hmfuc9avkdiq47:~$ ping google.com
PING google.com (209.85.233.100) 56(84) bytes of data.
64 bytes from lr-in-f100.1e100.net (209.85.233.100): icmp_seq=1 ttl=107 time=19.1 ms
64 bytes from lr-in-f100.1e100.net (209.85.233.100): icmp_seq=2 ttl=107 time=18.9 ms
64 bytes from lr-in-f100.1e100.net (209.85.233.100): icmp_seq=3 ttl=107 time=18.9 ms
64 bytes from lr-in-f100.1e100.net (209.85.233.100): icmp_seq=4 ttl=107 time=18.9 ms
^C
--- google.com ping statistics ---
4 packets transmitted, 4 received, 0% packet loss, time 3004ms
rtt min/avg/max/mdev = 18.930/18.992/19.166/0.170 ms
ubuntu@epdqr1hmfuc9avkdiq47:~$ 
```

3. vm в приватной сети

```bash
 ~/Documents/Netology/DevOps/org/hw-org/src  ssh -J ubuntu@158.160.71.123 ubuntu@192.168.20.8
The authenticity of host '192.168.20.8 (<no hostip for proxy command>)' can't be established.
ED25519 key fingerprint is SHA256:I4M1tqCBwCbPuXDdZzTM0xYpBYk9Yxp4qfXxW+FdCyI.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.20.8' (ED25519) to the list of known hosts.
Welcome to Ubuntu 18.04.6 LTS (GNU/Linux 4.15.0-213-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

  System information as of Mon May 12 20:49:40 UTC 2025

  System load:  0.05              Processes:           92
  Usage of /:   7.6% of 18.73GB   Users logged in:     0
  Memory usage: 6%                IP address for eth0: 192.168.20.8
  Swap usage:   0%

 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

Expanded Security Maintenance for Infrastructure is not enabled.

0 updates can be applied immediately.

121 additional security updates can be applied with ESM Infra.
Learn more about enabling ESM Infra service for Ubuntu 18.04 at
https://ubuntu.com/18-04



The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ubuntu@epdgekkom79631bjtqqm:~$ ip add
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether d0:0d:10:75:29:8b brd ff:ff:ff:ff:ff:ff
    inet 192.168.20.8/24 brd 192.168.20.255 scope global dynamic eth0
       valid_lft 4294967113sec preferred_lft 4294967113sec
    inet6 fe80::d20d:10ff:fe75:298b/64 scope link 
       valid_lft forever preferred_lft forever
ubuntu@epdgekkom79631bjtqqm:~$ ping google.com
PING google.com (209.85.233.139) 56(84) bytes of data.
64 bytes from lr-in-f139.1e100.net (209.85.233.139): icmp_seq=1 ttl=103 time=21.9 ms
64 bytes from lr-in-f139.1e100.net (209.85.233.139): icmp_seq=2 ttl=103 time=19.8 ms
64 bytes from lr-in-f139.1e100.net (209.85.233.139): icmp_seq=3 ttl=103 time=19.9 ms
^C
--- google.com ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2003ms
rtt min/avg/max/mdev = 19.838/20.578/21.941/0.964 ms
ubuntu@epdgekkom79631bjtqqm:~$ mtr -4Twzn -c 4 -P 443 google.com
Start: 2025-05-12T20:50:34+0000
HOST: epdgekkom79631bjtqqm          Loss%   Snt   Last   Avg  Best  Wrst StDev
  1. AS???    192.168.20.1           0.0%     4    0.3   0.4   0.3   0.7   0.2
  2. AS???    ???                   100.0     4    0.0   0.0   0.0   0.0   0.0
  3. AS???    192.168.10.254         0.0%     4    0.4   0.6   0.4   0.9   0.3
  4. AS???    192.168.10.254         0.0%     4    0.5   0.4   0.2   0.5   0.1
  5. AS???    ???                   100.0     4    0.0   0.0   0.0   0.0   0.0
  6. AS???    178.170.222.224       50.0%     4    8.3   8.2   8.1   8.3   0.1
  7. AS???    178.170.222.224        0.0%     4    8.0   8.1   7.9   8.3   0.2
  8. AS???    ???                   100.0     4    0.0   0.0   0.0   0.0   0.0
  9. AS200350 130.193.63.138        50.0%     4  3033. 1520.   7.8 3033. 2139.3
     AS15169  142.250.162.254
 10. AS15169  192.178.241.119       75.0%     4  7116. 7116. 7116. 7116.   0.0
 11. AS15169  192.178.241.234        0.0%     4    8.3  10.9   8.3  17.4   4.3
     AS15169  192.178.241.70
     AS15169  192.178.241.146
     AS15169  192.178.243.132
 12. AS15169  142.251.238.84         0.0%     4  1045. 278.8  20.7 1045. 511.3
     AS15169  142.251.248.232
     AS15169  192.178.240.239
     AS15169  142.251.49.78
 13. AS15169  142.250.235.68         0.0%     4   21.0  21.1  20.4  22.3   0.8
     AS15169  108.170.232.251
     AS15169  172.253.66.110
 14. AS15169  216.239.57.229         0.0%     4   21.0  21.2  20.4  21.9   0.7
     AS15169  216.239.56.101
     AS15169  172.253.70.49
     AS15169  216.239.42.21
 15. AS15169  209.85.254.20         50.0%     4   28.1  28.7  28.1  29.3   0.9
     AS15169  74.125.253.109
 16. AS15169  172.253.70.51         50.0%     4   29.5  28.9  28.3  29.5   0.8
     AS15169  216.239.42.23
 17. AS???    ???                   100.0     4    0.0   0.0   0.0   0.0   0.0
 18. AS???    ???                   100.0     4    0.0   0.0   0.0   0.0   0.0
 19. AS???    ???                   100.0     4    0.0   0.0   0.0   0.0   0.0
 20. AS???    ???                   100.0     4    0.0   0.0   0.0   0.0   0.0
 21. AS15169  209.85.233.101        75.0%     4   20.0  20.0  20.0  20.0   0.0
ubuntu@epdgekkom79631bjtqqm:~$
```