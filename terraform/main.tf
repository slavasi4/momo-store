module "tf-yc-instance" {
  source = "./modules/tf-yc-instance"
  image_id= var.image_id
  subnet_id= var.subnet_id
  instance_zone = var.instance_zone
}

module "tf-yc-storage_bucket" {
  source = "./modules/tf-yc-storage_bucket"
  sa_admin_key = var.sa_admin_key
  sa_admin_secret = var.sa_admin_secret
  sa_uploader_id = var.sa_uploader_id
}  

module "tf-yc-kubernetes-cluster" {
  source = "./modules/tf-yc-kubernetes-cluster"
  sa_editor_id = var.sa_editor_id
  sa_puller_id = var.sa_puller_id
  network_id = var.network_id
  instance_zone= var.instance_zone
  subnet_id= var.subnet_id
}  
