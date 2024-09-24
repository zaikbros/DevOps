output "public_key" {
  value     = google_service_account_key.mykey.public_key
  sensitive = true
}

output "display_name" {
  value     = google_service_account.service_account.display_name
  sensitive = false
}

output "service_account_json" {
  value = jsonencode({
    service_account_email = google_service_account.service_account.email
    public_key_type       = var.public_key_type
    # Add other properties as needed
  })

  sensitive = true
}