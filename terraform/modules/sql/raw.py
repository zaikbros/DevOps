resource "google_sql_database" "database" {
    project = "andheri-duniya"
  name     = "made-by-terra"
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  project = "andheri-duniya"
  name    = "terra-database-instance"

  region           = "us-central1"
  database_version = "MYSQL_8_0"
  root_password    = null


  settings {
    tier    = "db-g1-small"
    edition = "ENTERPRISE"

    user_labels = {
      env = "dev"
    }

    location_preference {
      zone = "us-central1-c"
    }

    maintenance_window {
      day          = 7 //sunday
      update_track = "stable"
    }

    backup_configuration {
      transaction_log_retention_days = 6
      enabled                        = true
      start_time                     = "23:00"
    }

    ip_configuration {
      authorized_networks {
        name  = "my-instance"
        value = "34.132.154.181"
      }
    }


  }

  deletion_protection = "false"
}

resource "google_sql_user" "testing" {
  project = "andheri-duniya"
  host = "0.0.0.0/0"
  name = "root"
  password = null
  instance = google_sql_database_instance.instance.name
}