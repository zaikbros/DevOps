# Output the name of the created network
output "vpc_name" {
  value = module.vpc.vpc_name
}

# Output the description of the created network
output "vpc_description" {
  value = module.vpc.vpc_description
}
