variable "instance_zone" {
  type        = string
  description = "Instance availability zone"
  sensitive = false
  nullable = false
}  

variable "subnet_id" {
  type        = string
  description = "Subnet id in cloud"
  sensitive = true
  nullable = false
}

variable "network_id" {
  type        = string
  description = "Network id in cloud"
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