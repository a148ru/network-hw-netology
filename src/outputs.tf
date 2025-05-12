output "nat-instance-ip" {
  value = yandex_compute_instance.nat-instance.network_interface[0].nat_ip_address
}
output "test-vm-1-instance-pub-ip" {
  value = yandex_compute_instance.test-vm-1.network_interface[0].nat_ip_address
}
output "test-vm-2-instance-priv-ip" {
  value = yandex_compute_instance.test-vm-2.network_interface[0].ip_address
}