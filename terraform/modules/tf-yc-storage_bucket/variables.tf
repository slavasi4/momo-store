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

variable "sa_uploader_id" {
  type        = string
  description = "Id of uploader service account"
  sensitive = true
  nullable = false
}     