module "cloudbuild" {
  source  = "./modules/cloudbuild"
  region = var.region
  owner = josferbue
  serviceAccount = cloudbuild@jafernandez-tfm.iam.gserviceaccount.com
}
module "iam" {
  source  = "./modules/gke"
  project_id = var.project_id
  region = var.region
  network = module.vpc.network
  subnet = module.vpc.subnet
  subnet_services_range = module.vpc.subnet_services_range
  subnet_pods_range = module.vpc.subnet_pods_range
  depends_on = [
    module.vpc,
  ]
}

