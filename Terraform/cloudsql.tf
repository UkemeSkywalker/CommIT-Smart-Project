# Create  SQL instance
resource "google_sql_database_instance" "commit_smart_sql" {
  name             = "commit_smart_db"
  database_version = "MYSQL_8_0"  
  project          = "commit-smart"
  region           = "us-east1"

  settings {
    tier = "db-n1-standard-1"  

}
}
# Create a database in the Cloud SQL instance
resource "google_sql_database" "commit_smart_database" {
  name     = "commit_smart-database"
  instance = google_sql_database_instance.commit_smart_sql.name


}
