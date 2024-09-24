# backend service with custom request and response headers
resource "google_compute_backend_service" "default" {
  project                 = "devops-practice-411411"
  name                    = "l7-xlb-backend-service"
  health_checks           = [google_compute_health_check.default.id]
  protocol                = "HTTP"
  port_name               = "my-port"
  load_balancing_scheme   = "EXTERNAL"
  timeout_sec             = 10
  enable_cdn              = true
  custom_request_headers  = ["X-Client-Geo-Location: {client_region_subdivision}, {client_city}"]
  custom_response_headers = ["X-Cache-Hit: {cdn_cache_status}"]
  backend {
    group           = google_compute_instance_group_manager.default.instance_group
    balancing_mode  = "UTILIZATION"
    capacity_scaler = 1.0
    
  }
  security_policy = "my-policy"
  
}