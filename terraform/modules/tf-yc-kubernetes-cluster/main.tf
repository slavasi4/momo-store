resource "yandex_kubernetes_cluster" "test-cluser-momo" {
 network_id = var.network_id
 name = "momo-store"
 release_channel = "STABLE"
 master {
   version = "1.22"
   public_ip = true
   zonal {
     zone      = var.instance_zone
     subnet_id = var.subnet_id
   }
 }
 cluster_ipv4_range = "10.113.0.0/16"
 service_ipv4_range = "10.97.0.0/16"
 service_account_id      = var.sa_editor_id
 node_service_account_id = var.sa_puller_id
}

resource "yandex_kubernetes_node_group" "my_node_group" {
  cluster_id  = yandex_kubernetes_cluster.test-cluser-momo.id
  name        = "momo-store-nodes-test"
  version     = "1.22"

  instance_template {
    platform_id = "standard-v1"

    network_interface {
      nat                = true
      subnet_ids         = [var.subnet_id]
    }

    resources {
      memory = 4		
      cores  = 2
    }

    boot_disk {
      type = "network-hdd"
      size = 64
    }

    scheduling_policy {
      preemptible = true
    }

    container_runtime {
      type = "docker"
    }
	
	metadata = {	
      user-data = "${file("/home/slavon/terraform-momo/meta.txt")}"
    }
  }

  scale_policy {
    fixed_scale {
      size = 2	
    }
  }
  
  deploy_policy {
    max_expansion = 2
	max_unavailable = 0
  }
  
  allocation_policy {
    location {
      zone = var.instance_zone
    }
  }
  
}