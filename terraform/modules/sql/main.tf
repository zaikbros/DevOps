resource "google_sql_database_instance" "instance" {
  project           = var.project
  name              = var.instance_name
  region            = var.region
  database_version  = var.database_version
  deletion_protection = var.enable_deletion_protection

  settings {
    tier    = var.tier
    edition = var.edition

    user_labels = var.user_labels

    location_preference {
      zone = "${var.region}-c"
    }

    maintenance_window {
      day          = var.maintenance_day
      update_track = var.update_track
    }

    backup_configuration {
      transaction_log_retention_days = var.transaction_log_retention_days
      enabled                        = var.enable_backup
      start_time                     = var.backup_start_time
    }

    ip_configuration {
      authorized_networks {
        name  = var.authorized_network_name
        value = var.authorized_network_value
      }
    }
  }
}

resource "google_sql_database" "database" {
  project  = var.project
  name     = var.database_name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_user" "testing" {
  project  = var.project
  host     = var.host
  name     = var.user_name
  password = random_password.terra-password.result
  instance = google_sql_database_instance.instance.name
}

resource "random_password" "terra-password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}