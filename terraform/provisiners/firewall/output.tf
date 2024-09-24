# Output the name of the firewall
output "firewall_name" {
  value = module.firewall.firewall_name
}

# Output the allowed protocols and ports of the firewall
output "firewall_allowed" {
  value = module.firewall.firewall_allowed
}

# Output the source tags of the firewall
output "firewall_source_tags" {
  value = module.firewall.firewall_source_tags
}

# Output the timeouts configuration of the firewall
output "firewall_timeouts" {
  value = module.firewall.firewall_timeouts
}
