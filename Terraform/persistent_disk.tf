# Create a GCP Persistent Disk
resource "google_compute_disk" "commit_smart_disk" {
  name  = "commit-smart-disk"
  size  = 80
}