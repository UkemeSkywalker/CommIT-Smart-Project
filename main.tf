# Initialize the GCP provider
provider "google" {
  project = "your-project-id"
  region  = "your-preferred-region"
}

# Include cluster module
module "gke_cluster" {
  source = "./modules/gke_cluster"
}

# Include firewall module
module "gke_firewall" {
  source = "./modules/gke_firewall"
}
