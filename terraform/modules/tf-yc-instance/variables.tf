variable "cores" {
  type        = number
  default = 2
  description = "Nubmer of CPU cores"
  sensitive = false
  nullable = false
}

variable "memory" {
  type        = number
  default = 4
  description = "Count of RAM (GB)"
  sensitive = false
  nullable = false
}

variable "disk_size" {
  type        = number
  default = 50
  description = "Size of disk (GB)"
  sensitive = false
  nullable = false
}

variable "nat" {
  type        = bool
  default = true
  description = "NAT enabled / disabled"
  sensitive = false
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

variable "platform_id" {
  type        = string
  default = "standard-v1"
  description = "CPU platform"
  sensitive = false
  nullable = false
} 

variable "instance_zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  sensitive = false
  nullable = false
} 