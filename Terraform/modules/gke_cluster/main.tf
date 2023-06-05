# Create the GKE cluster
resource "google_container_cluster" "commit-smart-cluster" {
  name               = "commit-smart"
  location           = "us-east1"
  initial_node_count = 3

}

# Create the GKE node pool
resource "google_container_node_pool" "commit-smart_node_pool" {
  name       = "commit-smart-node-pool"
  location   = "us-east1"
  cluster    = google_container_cluster.commit-smart-cluster.name
  node_count = 3

  # Machine type and disk size configuration
  node_config {
    machine_type = "e2-standard-2"
    disk_size_gb = 100
  }

}
