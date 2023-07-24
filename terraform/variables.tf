variable "instance_zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.instance_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  sensitive = false
  nullable = false
} 

variable "token" {
  type        = string
  description = "Token for access to cloud"
  sensitive = true
  nullable = false
}

variable "folder_id" {
  type        = string
  description = "Folder id in cloud"
  sensitive = true
  nullable = false
} 

variable "cloud_id" {
  type        = string
  description = "Cloud id"
  sensitive = true
  nullable = false
}

variable "image_id" {
  type        = string
  description = "OS image id in cloud"
  sensitive = true
  nullable = false
} 

variable "subnet_id" {
  type        = string
  description = "Subnet id in cloud"
  sensitive = true
  nullable = false
}

variable "sa_admin_key" {
  type        = string
  description = "Key of admin service account"
  sensitive = true
  nullable = false
}

variable "sa_admin_secret" {
  type        = string
  description = "Secret of admin service account"
  sensitive = true
  nullable = false
} 

variable "sa_uploader_key" {
  type        = string
  description = "Key of uploader service account"
  sensitive = true
  nullable = false
} 

variable "sa_uploader_secret" {
  type        = string
  description = "Secret of uploader service account"
  sensitive = true
  nullable = false
} 

variable "sa_uploader_id" {
  type        = string
  description = "Id of uploader service account"
  sensitive = true
  nullable = false
}   

variable "sa_editor_id" {
  type        = string
  description = "Id of editor service account"
  sensitive = true
  nullable = false
}   

variable "sa_puller_id" {
  type        = string
  description = "Id of puller service account"
  sensitive = true
  nullable = false
}     

variable "network_id" {
  type        = string
  description = "Network id in cloud"
  sensitive = true
  nullable = false
}