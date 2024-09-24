# Output the IP CIDR range of the first subnetwork
output "subnet1_ip_cidr_range" {
  value = google_compute_subnetwork.terraform-private-subnet.ip_cidr_range
}

# Output the IP CIDR range of the second subnetwork
output "subnet2_ip_cidr_range" {
  value = google_compute_subnetwork.terraform-private2-subnet.ip_cidr_range
}

# Output the log configuration of the first subnetwork
output "subnet1_log_config" {
  value = google_compute_subnetwork.terraform-private-subnet.log_config
}
