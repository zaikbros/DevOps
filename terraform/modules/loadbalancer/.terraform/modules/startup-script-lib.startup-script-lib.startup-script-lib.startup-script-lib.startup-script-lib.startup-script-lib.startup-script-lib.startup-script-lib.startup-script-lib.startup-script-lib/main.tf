/*# VPC
resource "google_compute_network" "default" {
  name                    = "l7-xlb-network"
  auto_create_subnetworks = false
}

# backend subnet
resource "google_compute_subnetwork" "default" {
  name          = "l7-xlb-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.default.id
}*/

# reserved IP address
resource "google_compute_global_address" "default" {
  project = "devops-practice-411411"
  name = "l7-xlb-static-ip"
}

# health check
resource "google_compute_health_check" "default" {
  project = "devops-practice-411411"
  name = "l7-xlb-hc"
  http_health_check {
    port_specification = "USE_SERVING_PORT"
  }
}

# backend service with custom request and response headers
resource "google_compute_backend_service" "default" {
  project = "devops-practice-411411"
  name                    = "l7-xlb-backend-service"
  protocol                = "HTTP"
  port_name               = "my-port"
  load_balancing_scheme   = "EXTERNAL"
  timeout_sec             = 10
  enable_cdn              = true
  custom_request_headers  = ["X-Client-Geo-Location: {client_region_subdivision}, {client_city}"]
  custom_response_headers = ["X-Cache-Hit: {cdn_cache_status}"]
  health_checks           = [google_compute_health_check.default.id]
  backend {
    group           = google_compute_instance_group_manager.default.instance_group
    balancing_mode  = "UTILIZATION"
    capacity_scaler = 1.0
  
  }
  security_policy = "my-policy"
}

# MIG
resource "google_compute_instance_group_manager" "default" {
  project = "devops-practice-411411"
  name = "l7-xlb-mig1"
  zone = "us-central1-c"
  /*named_port {
    name = "http"
    port = 8080
  }*/
  version {
    instance_template = google_compute_instance_template.default.id
    name              = "primary"
  }
  base_instance_name = "vm"
  target_size        = 2
}

# forwarding rule
resource "google_compute_global_forwarding_rule" "default" {
  project = "devops-practice-411411"
  name                  = "l7-xlb-forwarding-rule"
  ip_protocol           = "TCP"
  load_balancing_scheme = "EXTERNAL"
  port_range            = "80"
  target                = google_compute_target_http_proxy.default.id
  ip_address            = google_compute_global_address.default.id
}

# http proxy
resource "google_compute_target_http_proxy" "default" {
  project = "devops-practice-411411"
  name    = "l7-xlb-target-http-proxy"
  url_map = google_compute_url_map.default.id
}

# url map
resource "google_compute_url_map" "default" {
  project = "devops-practice-411411"
  name            = "l7-xlb-url-map"
  default_service = google_compute_backend_service.default.id
}

# instance template
resource "google_compute_instance_template" "default" {
  project = "devops-practice-411411"
  name         = "l7-xlb-mig-template"
  machine_type = "e2-small"
  tags         = ["allow-health-check"]

  network_interface {
    network    = "terraform-network"
    subnetwork = "terraform-private-subnet"
    access_config {
      # add external ip to fetch packages
    }
  }
  disk {
    source_image = "ubuntu-os-cloud/ubuntu-2004-lts"
    auto_delete  = true
    boot         = true
  }

  # install nginx and serve a simple web page
  metadata = {
    startup-script = "${module.startup-script-lib.content}"
    
  }
  lifecycle {
    create_before_destroy = true
  }
}

/*# allow access from health check ranges
resource "google_compute_firewall" "default" {
  name          = "l7-xlb-fw-allow-hc"
  direction     = "INGRESS"
  network       = google_compute_network.default.id
  source_ranges = ["130.211.0.0/22", "35.191.0.0/16"]
  allow {
    protocol = "tcp"
  }
  target_tags = ["allow-health-check"]
}
*/