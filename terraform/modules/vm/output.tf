# Output the public IP address of the created instance
output "instance_public_ip" {
  value = google_compute_instance.terraform-instance.network_interface.0.network_ip
}

# Output the private IP address of the created instance
output "instance_private_ip" {
  value = google_compute_instance.terraform-instance.network_interface.0.access_config.0.nat_ip
}
output "self_link" {
    value = google_compute_instance.terraform-instance.self_link

}

output "subnet_name" {
  value = google_compute_instance.terraform-instance.network_interface[0].subnetwork
  
}

output "firewall_name" {
  value = google_compute_instance.terraform-instance.network_interface[0].network
}

output "service_account" {
  value = google_compute_instance.terraform-instance.service_account[0].email
}
output "labels" {
  value = google_compute_instance.terraform-instance.boot_disk[0].initialize_params[0].labels
}


# output "subnet_name" {
#   value = data.google_compute_instance.terraform_intance.network_interface[0].subnetwork
# }

# output "instance_id" {
#   value = data.google_compute_instance.terraform_intance.id
# }

# output "network_name" {
#   value = data.google_compute_instance.terraform-intance.network_name
# }
