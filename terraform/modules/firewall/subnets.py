# -->  Subnets are segments of a VPC's IP address range. 
# -->  They are used to organize and isolate resources within a network.

resource "google_compute_subnetwork" "terraform-private-subnet" {
  name          = var.subnet1_name
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.terraform-network.self_link

 /* This field denotes the VPC flow logging options for this subnetwork.
 If logging is enabled, logs are exported to Cloud Logging. 
 Flow logging isn't supported if the subnet purpose field is set to subnetwork is REGIONAL_MANAGED_PROXY or GLOBAL_MANAGED_PROXY */

  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
 /* "METADATA" This attribute specifies whether metadata for network flows should be included in the logs. 
 In this case, it is set to "INCLUDE_ALL_METADATA", indicating that all available metadata 
 associated with network flows will be included in the logs. Metadata can provide additional context 
 and details about network activity. */

  description   = "this is private subnet"
  project       = "devops-practice-411411"

  timeouts {
    create = "20m" 
    delete = "15m" 
  }


}

resource "google_compute_subnetwork" "terraform-private2-subnet" {
  name          = var.subnet2_name
  project       = "devops-practice-411411"
  ip_cidr_range = "192.168.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.terraform-network.self_link

   log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
}

