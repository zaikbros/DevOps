############################################
############  VM  VARIABLES  ###############
############################################

variable "project" {
  type        = string
  default     = "devops-practice-411411"
  description = "this is project id"
}

variable "zone" {
  type    = string
  default = "us-central1-a"

}

variable "vm_service_account_id" {
  type    = string
  default = "testing"

}

variable "vm_service_account_displayname" {
  type    = string
  default = "testing SA for VM Instance"
}

variable "vm_service_account_email" {
  type    = string
  default = "testing-id@devops-practice-411411.iam.gserviceaccount.com"

}

variable "vm_service_account_scoope" {
  type    = string
  default = "cloud-platform"

}

variable "instance_name" {
  type    = string
  default = "terraform-instance"

}

variable "create_timeout" {
  type    = string
  default = "20m"

}

variable "delete_timeout" {
  type    = string
  default = "15m"

}

variable "updte_timeout" {
  type    = string
  default = "10m"

}

variable "network_network_interface" {
  type    = string
  default = "projects/devops-practice-411411/global/networks/terraform-network"

}

variable "subnetwork_network_interface" {
  type    = string
  default = "projects/devops-practice-411411/regions/us-central1/subnetworks/terraform-private2-subnet"

}

variable "vm_tags" {
  type = list(string)
  default = ["web", "http-server", "https-server"]
  
}

variable "os_image" {
  type    = string
  default = "ubuntu-os-cloud/ubuntu-2004-lts"

}

variable "boot_disk_size" {
  type    = number
  default = 10

}

variable "boot_disk_type" {
  type    = string
  default = "pd-balanced"

}

variable "boot_disk_lable" {
  type    = string
  default = "terraform-server-disk"

}

variable "metadata_environment" {
  type    = string
  default = "production"

}

variable "metadata_startup_script" {
  type    = string
  default = <<-EOT
    #!/bin/bash
    apt-get update
    apt-get install -y apache2
    echo "Hello, World!" > /var/www/html/index.html
    service apache2 restart
  EOT
}

variable "owner_email" {

  type    = string
  default = "syed@example.com"
}

variable "name-terraform-instance" {
  type    = string
  default = "terraform-instance"

}

variable "machine_type" {
  type    = string
  default = "e2-standard-2"

}

variable "scratch_disk_interface" {
  type    = string
  default = "NVME"
}

variable "boot_disk_device_name" {
  type    = string
  default = "testing_disk"

}