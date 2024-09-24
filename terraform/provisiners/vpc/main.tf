module "vpc" {
    source = "C:\\Users\\Syed Khaleelullah\\Desktop\\terraform\\modules\\vpc"
    
    project                 = var.project
    zone                    = var.zone
    name-terraform-network  = var.name-terraform-network
    mtu                     = var.mtu
    routing_mode            = var.routing_mode
    vpc_description         = var.vpc_description
    create_timeouts         = var.create_timeouts
    delete_timeouts         = var.delete_timeouts
    update_timeout          = var.update_timeout
}