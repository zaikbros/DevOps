module "sql" {
  source = "C:\\Users\\Syed Khaleelullah\\Desktop\\terraform\\modules\\sql"

  project                  = var.project
  region                   = var.region
  user_labels              = var.user_labels
  edition                  = var.edition
  authorized_network_name  = var.authorized_network_name
  authorized_network_value = var.authorized_network_value

}