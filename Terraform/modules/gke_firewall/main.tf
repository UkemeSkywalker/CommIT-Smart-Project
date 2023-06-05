# Allow traffic to the GKE cluster
resource "google_compute_firewall" "gke_firewall" {
  name    = "gke-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_tags = ["gke-${var.gke_cluster_name}"]
  target_tags = ["gke-${var.gke_cluster_name}"]
}

