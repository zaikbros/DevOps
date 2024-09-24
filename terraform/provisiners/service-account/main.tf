module "service_account" {
    source = "C:\\Users\\Syed Khaleelullah\\Desktop\\terraform\\modules\\service-account"
    
    account_id         = var.account_id
    display_name       = var.display_name
    service_account_id = var.service_account_id
    public_key_type    = var.public_key_type
    project            = var.project
}