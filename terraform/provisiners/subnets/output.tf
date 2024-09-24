# Output the IP CIDR range of the first subnetwork
output "subnet1_ip_cidr_range" {
  value = module.subnets.subnet1_ip_cidr_range
}

# Output the IP CIDR range of the second subnetwork
output "subnet2_ip_cidr_range" {
  value = module.subnets.subnet2_ip_cidr_range
}

# Output the log configuration of the first subnetwork
output "subnet1_log_config" {
  value = module.subnets.subnet1_log_config
}
