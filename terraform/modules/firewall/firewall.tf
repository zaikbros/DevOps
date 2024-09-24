resource "google_compute_firewall" "terraform-firewall" {
  project = var.project
  name    = var.name_firewall
  network = var.name-terraform-network
  direction = var.direction
  priority = var.priority

  allow {
    protocol = var.protocol
    ports    = var.ports
  }

  target_tags = var.target_tags

  source_ranges = ["0.0.0.0/0"]
 
  source_tags = ["web"]
  
  timeouts {
    create = var.create_timeouts
    delete = var.delete_timeouts
    update =  var.update_timeouts
  }
}

