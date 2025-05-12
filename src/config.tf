data template_file "cloudinit" {
  template = file("./cloud-config.yml")

  vars = {
    ssh_public_key = local.ssh_key
  }
}