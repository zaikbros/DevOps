module "subnets" {
    source = "C:\\Users\\Syed Khaleelullah\\Desktop\\terraform\\modules\\subnets"
    
    project      = var.project
    zone         = var.zone
    subnet1_name = var.subnet1_name
    subnet1_ip_cidr_range = var.subnet1_ip_cidr_range
    log_interval = var.log_interval
    log_flow_sampling = var.log_flow_sampling
    metadata = var.metadata
    create_timeouts = var.create_timeouts
    delete_timeouts = var.delete_timeouts
    update_timeouts = var.update_timeouts
    subnet1_description = var.subnet1_description
    subnet2_name = var.subnet2_name
    subnet2_ip_cidre_range = var.subnet2_ip_cidre_range
    region_name = var.region_name
    name-terraform-network = var.name-terraform-network

}