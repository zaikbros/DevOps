output "project_id" {
  value = module.dns.project_id
}

output "private_zone_name" {
  value = module.dns.private_zone_name
}

output "dns_name" {
  value = module.dns.dns_name
}


output "name_server_attach_to_A_record" {
  value = module.dns.name_server_attach_to_A_record
}

output "visibility_type" {
  value = module.dns.visibility_type
}

output "private_zone_network_url" {
  value = module.dns.private_zone_network_url
}