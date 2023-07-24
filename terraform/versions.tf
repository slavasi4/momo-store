terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
	  version = ">=0.84.0"
    }
  }
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "momo-store-state"
    region     = "ru-central1"
    key        = "terraform-momo/terraform.tfstate"
    access_key = "YCAJEKdS4tbEDzdxmCXv6ZZNi"
    secret_key = "YCOllHUJaZ_1tn7yNOhu5GSalpl6TXI0Q4t3awRo"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
  required_version  = ">=1.1.4"
}