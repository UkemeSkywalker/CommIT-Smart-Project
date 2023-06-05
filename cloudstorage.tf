# Create Storage bucket
resource "google_storage_bucket" "commit_smart_bucket" {
  name          = "commit_smart-bucket"
  location      = "us-east1"  
  force_destroy = true  # Enable this to allow Terraform to destroy the bucket
}

# Upload a file to the Cloud Storage bucket
resource "google_storage_bucket_object" "my_object" {
  name   = "sample.txt"  # file name in the bucket
  bucket = google_storage_bucket.commit_smart_bucket.name
  source = "files/sample.txt"  # local path of the file 
}
