output "public_key" {
  value     = module.service_account.public_key
  sensitive = true
}

output "display_name" {
  value     = module.service_account.display_name
  sensitive = false
}

output "called_service_account_json" {
  value = module.service_account.service_account_json

  sensitive = true
}
