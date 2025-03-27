module "compute_instance" {
  source        = "../../Modules/compute_instance"
  project_id    = var.project_id
  region        = var.region
  instance_name = "stag-instance"
}

module "storage_bucket" {
  source      = "../../Modules/storage_bucket"
  project_id  = var.project_id
  bucket_name = "${var.project_id}-stag-bucket"
}

module "iam_user" {
  source     = "../../Modules/iam_user"
  user_email = "stag-user@yourdomain.com"
}

module "cloud_sql" {
  source         = "../../Modules/cloud_sql"
  project_id     = var.project_id
  region         = var.region
  instance_name  = "stag-sql-instance"
  database_name  = "stag-db"
  sql_user_name  = "stag-user"
  sql_user_password = "securepassword123" # Use secrets management in production
}