# Output the name of the firewall
output "firewall_name" {
  value = google_compute_firewall.terraform-firewall.name
}

# Output the allowed protocols and ports of the firewall
output "firewall_allowed" {
  value = google_compute_firewall.terraform-firewall.allow
}

# Output the source tags of the firewall
output "firewall_source_tags" {
  value = google_compute_firewall.terraform-firewall.source_tags
}

# Output the timeouts configuration of the firewall
output "firewall_timeouts" {
  value = google_compute_firewall.terraform-firewall.timeouts
}
