# Output the public IP address of the created instance
output "instance_public_ip" {
  value = module.vm.instance_public_ip
}

# Output the private IP address of the created instance
output "instance_private_ip" {
  value = module.vm.instance_private_ip
}

