output "project_id" {
  value = google_sql_database_instance.instance.project
}

output "tier" {
    value = google_sql_database_instance.instance.settings[0].tier
}

output "edition" {
  value = google_sql_database_instance.instance.settings[0].edition
}

output "host" {
  value = google_sql_user.testing.host
}

output "user" {
  value = google_sql_user.testing.name
}