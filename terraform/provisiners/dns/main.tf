module "dns" {
    source = "C:\\Users\\Syed Khaleelullah\\Desktop\\terraform\\modules\\dns"
  
    project =   var.project
    zone_name = var.zone_name
    dns_name = var.dns_name
    description = var.description
    labels = var.labels
    visibility = var.visibility
    ttl = var.ttl
    rrdatas = var.rrdatas
}