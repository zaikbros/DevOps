resource "google_compute_global_forwarding_rule" "default" {
  project               = "devops-practice-411411"
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
  project         = "devops-practice-411411"
  name            = "l7-xlb-url-map"
  default_service = google_compute_backend_service.default.id

}