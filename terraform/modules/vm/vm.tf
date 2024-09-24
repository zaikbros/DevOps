resource "google_service_account" "testing" {
  account_id   = var.vm_service_account_id
  display_name = var.vm_service_account_displayname
}

resource "google_compute_instance" "terraform-instance" {
  project      = var.project
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  timeouts {
    create = var.create_timeout
    delete = var.delete_timeout
    update =  var.updte_timeout
  }

  network_interface {
    network    = var.network_network_interface
    subnetwork = var.subnetwork_network_interface
  

    access_config {
    }
  }

  deletion_protection = false
  can_ip_forward = false

  shielded_instance_config {
    enable_secure_boot         = false
    enable_vtpm                = false
    enable_integrity_monitoring = false
  }

  scheduling {
    preemptible  = false             
    automatic_restart = true           
  }


  tags = var.vm_tags

  boot_disk {
    device_name = var.boot_disk_device_name
    auto_delete = false 
    
    initialize_params {
      image = var.os_image
      size = var.boot_disk_size 
      type = var.boot_disk_type
      enable_confidential_compute = false
      
      labels = {
        my_label = var.boot_disk_lable
  
      }
    }
  }

  /*scratch_disk {
    interface = var.scratch_disk_interface
    size = 50
  }*/

  metadata = {
    environment = var.metadata_environment,
    owner       = var.owner_email
  }
  
  metadata_startup_script = var.metadata_startup_script

  service_account {
    email  = var.vm_service_account_email
    scopes = [var.vm_service_account_scoope]
  }
}

