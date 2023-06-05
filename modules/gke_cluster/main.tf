# Initialize the GCP provider
provider "google" {
  project = "interview-project-388915"
  region  = "us-east1"
}

# Include cluster module
module "gke_cluster" {
  source = "./modules/gke_cluster"
}

# Include firewall module
module "gke_firewall" {
  source = "./modules/gke_firewall"
}
