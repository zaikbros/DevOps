resource "google_compute_subnetwork" "terraform-private-subnet" {
  name          = var.subnet1_name
  ip_cidr_range = var.subnet1_ip_cidr_range
  region        = var.region_name
  network       = var.name-terraform-network

   secondary_ip_range {
    range_name    = "services-range"
    ip_cidr_range = "192.168.1.0/24"
  }

  secondary_ip_range {
    range_name    = "pod-ranges"
    ip_cidr_range = "192.168.64.0/22"
  }

  log_config {
    aggregation_interval = var.log_interval
    flow_sampling        = var.log_flow_sampling
    metadata             = var.metadata
  }

  description   = var.subnet1_description
  project       = var.project

  timeouts {
    create = var.create_timeouts
    delete = var.delete_timeouts
    update = var.update_timeouts
  }
}

resource "google_compute_subnetwork" "terraform-private2-subnet" {
  name          = var.subnet2_name
  project       = var.project
  ip_cidr_range = var.subnet2_ip_cidre_range
  region        = var.region_name
  network       = var.name-terraform-network

   log_config {
    aggregation_interval = var.log_interval
    flow_sampling        = var.log_flow_sampling
    metadata             = var.metadata
  }
}

