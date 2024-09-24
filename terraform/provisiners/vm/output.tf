# Output the public IP address of the created instance
output "instance_public_ip" {
  value = module.vm.instance_public_ip
}

# Output the private IP address of the created instance
output "instance_private_ip" {
  value = module.vm.instance_private_ip
}
output "self_link" {
value = module.vm.self_link

}

output "subnet_name" {
  value = module.vm.subnet_name
  
}

output "firewall_name" {
  value = module.vm.firewall_name
}

output "service_account" {
  value = module.vm.service_account
}

# output "subnet_name" {
#   value = module.vm.network_interface[0].subnetwork
# }

# output "instance_id" {
#   value = module.vm.testing.id
# }

# output "network_name" {
#   value = module.vm.testing.network_interface[0].network
# }
