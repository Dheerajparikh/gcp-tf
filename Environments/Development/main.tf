module "compute_instance" {
  source        = "../../Modules/compute_instance"
  project_id    = var.project_id
  region        = var.region
  instance_name = "dev-instance"
}

module "storage_bucket" {
  source      = "../../Modules/storage_bucket"
  project_id  = var.project_id
  bucket_name = "${var.project_id}-dev-bucket"
}

module "iam_user" {
  source     = "../../Modules/iam_user"
  user_email = "dev-user@yourdomain.com"
}

module "cloud_sql" {
  source         = "../../Modules/cloud_sql"
  project_id     = var.project_id
  region         = var.region
  instance_name  = "dev-sql-instance"
  database_name  = "dev-db"
  sql_user_name  = "dev-user"
  sql_user_password = "securepassword123" # Use secrets management in production
}