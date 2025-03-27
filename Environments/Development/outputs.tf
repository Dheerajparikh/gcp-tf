output "instance_name" {
  value = module.compute_instance.instance_name
}

output "bucket_name" {
  value = module.storage_bucket.bucket_name
}

output "sql_instance_name" {
  value = module.cloud_sql.sql_instance_name
}