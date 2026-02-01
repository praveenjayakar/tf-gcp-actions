# Local backend for initial setup
# terraform {
#   backend "local" {
#     path = "terraform.tfstate"
#   }
# }

#After creating the storage bucket, uncomment below and migrate:
terraform {
  backend "gcs" {
    #bucket = "${var.project_id}-${var.environment}-terraform-state"
    bucket = "edge-485915-dev-terraform-state"
    prefix = "foundation/state"
  }
}
