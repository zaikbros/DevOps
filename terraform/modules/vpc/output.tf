# Output the name of the created network
output "vpc_name" {
  value = google_compute_network.terraform-network.name
}

# Output the description of the created network
output "vpc_description" {
  value = google_compute_network.terraform-network.description
}
