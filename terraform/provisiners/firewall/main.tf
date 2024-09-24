module "firewall" {
    source = "C:\\Users\\Syed Khaleelullah\\Desktop\\terraform\\modules\\firewall"
    
    project                = var.project
    zone                   = var.zone
    name_firewall          = var.name_firewall
    name-terraform-network = var.name-terraform-network
    protocol               = var.protocol
    ports                  = var.ports
    target_tags            = var.target_tags
    create_timeouts        = var.create_timeouts
    delete_timeouts        = var.delete_timeouts
    update_timeouts        = var.update_timeouts
    direction              = var.direction
    priority               = var.priority
}