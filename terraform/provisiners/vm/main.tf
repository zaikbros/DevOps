module "vm" {
    source = "C:\\Users\\Syed Khaleelullah\\Desktop\\terraform\\modules\\vm"
    
    vm_service_account_id   = var.vm_service_account_id
    vm_service_account_displayname = var.vm_service_account_displayname
    project      = var.project
    instance_name = var.instance_name
    machine_type = var.machine_type
    zone         = var.zone
   create_timeout = var.create_timeout
   delete_timeout = var.delete_timeout
    updte_timeout = var.updte_timeout
   network_network_interface   = var.network_network_interface
    subnetwork_network_interface = var.subnetwork_network_interface
    boot_disk_device_name = var.boot_disk_device_name
    os_image = var.os_image
    boot_disk_size = var.boot_disk_size 
    boot_disk_type = var.boot_disk_type
   boot_disk_lable = var.boot_disk_lable
    scratch_disk_interface = var.scratch_disk_interface
    metadata_environment = var.metadata_environment
    owner_email      = var.owner_email
    vm_service_account_email  = var.vm_service_account_email
    vm_service_account_scoope = var.vm_service_account_scoope
}