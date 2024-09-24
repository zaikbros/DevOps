resource "google_compute_network" "terraform-network" {
  name                    = var.name-terraform-network
  auto_create_subnetworks = false
  //auto_delete             = false
  project                 = var.project
  mtu                     = var.mtu
  routing_mode = var.routing_mode
  description = var.vpc_description

  timeouts {
    create = var.create_timeouts 
    delete = var.delete_timeouts
    update = var.update_timeout 
  }
}
