resource "yandex_compute_instance" "vm-1" {
  name = "dev"
  platform_id = var.platform_id
  zone        = var.instance_zone
  
  resources {
    cores  = var.cores
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size = var.disk_size
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.nat
  }

  metadata = {
    serial-port-enable = "1"
    user-data = "${file("/home/slavon/terraform-momo/meta.txt")}"
  }
}
