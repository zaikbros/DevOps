# --> A VPC is a virtual network that lets you provision and manage networking resources in GCP. 
# --> It provides isolation and security for your cloud resources.

resource "google_compute_network" "terraform-network" {
  name                    = "terraform-network"
  auto_create_subnetworks = false
  #auto_delete             = true  # Added argument for auto-delete of the default network
  project                 = "devops-practice-411411"
  mtu                     = 1460            # maximum transmission unit of the network.
  routing_mode = "REGIONAL"
  description = "this vpc network and added some extra arguements"

  timeouts {
    create = "20m" # this founctin will wait for 45 minutes to crates the instance after the time it will stop the process
    delete = "15m" # this function will wait for 15 minutes to destroying the instance 
  }
}
