# Initialize the GCP provider
provider "google" {
  project = "commit-smart"
  region  = "us-east1"
}

# Include cluster module
module "gke_cluster" {
  source = "./modules/gke_cluster"
}

# Include firewall module
module "gke_firewall" {
  source                 = "./modules/gke_firewall"
  gke_cluster_name       = google_container_cluster.commit-smart-cluster.name
  gke_cluster_project_id = var.project_id
}


