module "iam" {
  source  = "./modules/iam"
  project_id = var.project_id
  
}
module "cloudbuild" {
  source  = "./modules/cloudbuild"
  region = var.region
  owner = josferbue
  serviceAccount = cloudbuild@jafernandez-tfm.iam.gserviceaccount.com
  depends_on = [
    module.iam,
  ]
}
module "firestore" {
  source  = "./modules/firestore"
  region = var.region
  owner = josferbue
  serviceAccount = firestore@jafernandez-tfm.iam.gserviceaccount.com
  depends_on = [
    module.iam,
  ]
}
module "bigquery" {
  source  = "./modules/firestore"
  region = var.region
  owner = josferbue
  serviceAccount = firestore@jafernandez-tfm.iam.gserviceaccount.com
  depends_on = [
    module.iam,
  ]
}
module "api" {
  source  = "./modules/apis"
  region = var.region
  owner = josferbue
  gcp_service_list = var.gcp_service_list
  depends_on = [
    module.iam,
  ]
}
module "scheduler" {
  source  = "./modules/scheduler"
  region = var.region
  owner = josferbue
  gcp_service_list = var.gcp_service_list
  depends_on = [
    module.iam,
  ]
}


