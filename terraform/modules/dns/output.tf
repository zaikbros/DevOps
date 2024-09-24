output "project_id" {
  value = google_dns_managed_zone.private-zone.project
}

output "private_zone_name" {
  value = google_dns_managed_zone.private-zone.name
}

output "dns_name" {
  value = google_dns_managed_zone.private-zone.dns_name
}


output "name_server_attach_to_A_record" {
  value = google_dns_record_set.terra_record.rrdatas
}

output "visibility_type" {
  value = google_dns_managed_zone.private-zone.visibility
}

output "private_zone_network_url" {
  value = google_dns_managed_zone.private-zone.private_visibility_config[0].networks
}