output "sql_instance_name" {
  value = google_sql_database_instance.instance.name
}

output "database_name" {
  value = google_sql_database.database.name
}