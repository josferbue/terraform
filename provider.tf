provider "google" {
 credentials = file("terraform-credentials.json")
 project     = var.project_id
 region      = var.region
}
