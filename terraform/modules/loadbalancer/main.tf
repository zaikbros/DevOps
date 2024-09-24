# reserved IP address
resource "google_compute_global_address" "default" {
  project = "devops-practice-411411"
  name    = "l7-xlb-static-ip"
}


# MIG
resource "google_compute_instance_group_manager" "default" {
  project = "devops-practice-411411"
  name    = "l7-xlb-mig1"
  zone    = "us-central1-c"
  
  named_port {
    name = "http"
    port = 80
  }
  version {
    instance_template = google_compute_instance_template.default.id
    name              = "primary"
    
  }
  base_instance_name = "vm"
  target_size        = 2
  auto_healing_policies {
    initial_delay_sec = 300
    health_check      = google_compute_health_check.default.id
    
  }
  
}

# instance template
resource "google_compute_instance_template" "default" {
  project      = "devops-practice-411411"
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
    startup-script = <<-EOT
    #!/bin/bash
    apt-get update
    apt-get install -y apache2
    echo "Hello, World!" > /var/www/html/index.html
    service apache2 restart
  EOT
  }
  /*lifecycle {
    create_before_destroy = false
  }*/
  
}

resource "google_compute_autoscaler" "default" {
  project = "devops-practice-411411"
  provider = google-beta
  
  name  = "l7-x-lb"
  zone  = "us-central1-c"
  target  = google_compute_instance_group_manager.default.id
   autoscaling_policy {
    max_replicas    = 5
    min_replicas    = 3
    cooldown_period = 60
    }
}

resource "google_compute_security_policy" "policy" {
  name = "terra-policy"
   rule {
    action         = "deny(403)"
    description    = "Block traffic from the United States"
    priority = 100
    
    match {
      expr {
        expression = "origin.region_code == 'US'"
      }
    }
  }
   rule {
    action   = "allow"
    priority = "2147483647"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
     
    }
    description = "default rule"
  }

}