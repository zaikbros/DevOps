# health check
resource "google_compute_health_check" "default" {
  project = "devops-practice-411411"
  name    = "l7-xlb-hc"

  timeout_sec         = 5
  check_interval_sec  = 5
  healthy_threshold   = 2
  unhealthy_threshold = 2
  http_health_check {
    request_path = "/"
    port_name    = "http"
    port         = "80"
    //response = "I'm healthy"
  }
  
}