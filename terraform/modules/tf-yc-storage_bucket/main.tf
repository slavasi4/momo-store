resource "yandex_storage_bucket" "test-bucket-test" {
  access_key = var.sa_admin_key
  secret_key = var.sa_admin_secret
  max_size= 53687091200
  grant {
    id          = var.sa_uploader_id
    type        = "CanonicalUser"
    permissions = ["READ","WRITE"]
  }
  bucket = "momo-store-logs"
}