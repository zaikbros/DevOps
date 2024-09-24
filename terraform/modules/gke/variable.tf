variable "cluster_name" {
  type = string
  default = "terraform-vpc-native-cluster"
}

variable "cluster_location" {
  type = string
  default = "us-central1"
}

variable "cluster_initial_node_count" {
  type = number
  default = 1
}

variable "name-terraform-network" {
    type = string
    default = "terraform-network"
}

variable "subnet1_name" {
  type = string
  default = "terraform-private-subnet"  
}

variable "value_of_remove_default_node_pool" {
  type = bool
  default = true  
}

variable "value_of_deletion_protection" {
  type = bool
  default = false
}

variable "value_of_http_load_balancing_disabled" {
  type = bool
  default = false
}

variable "value_of_horizontal_pod_autoscaling_disabled" {
  type = bool
  default = false
}

variable "value_of_gcp_filestore_csi_driver_config_enabled" {
  type = bool
  default = true
}

variable "cluster_dns" {
  type = string
  default = "PLATFORM_DEFAULT"
}

variable "cluster_monitoring_compon" {
  type = list(string)
  default = [ "SYSTEM_COMPONENTS" ]
}

variable "cluster_logging_cpmpo" {
  type = list(string)
  default = [ "SYSTEM_COMPONENTS" ]
}

variable "cluster_maintenance_start_time" {
  type = string
  default = "03:00"
}

variable "cluster_release_channel" {
  type = string
  default = "REGULAR"
}

variable "cluster_autoscaling" {
  type = string
  default = "BALANCED"
}

variable "cluster_master_version" {
  type = string
  default = "1.27.8-gke.1067004"
}

variable "cluster_secondary_range_name" {
  type = string
  default = "pod-ranges"
}

variable "services_secondary_range_name" {
  type = string
  default = "services-range"
}

variable "value_of_enable_private_nodes" {
  type = bool
  default = true
}

variable "cluster_master_ipv4_cidr_block" {
  type = string
  default = "172.16.0.0/28"
}

variable "auth_master_ipv4_cidr_block" {
  type = string
  default = "172.16.0.0/28"
}

variable "value_of_enable_private_endpoint" {
  type = bool
  default = true
}

variable "name_cidr_block" {
  type = string
  default = "My Authorized Network"
}

variable "value_of_notification_config_enable" {
  type = bool
  default = true
}

variable "google_pubsub_topic_id" {
  type = string
  default = "google_pubsub_topic.notifications.id"
}

variable "create_timeouts" {
  type = string
  default = "25m"
}

variable "update_timeouts" {
  type = string
  default = "25m"
}

variable "delete_timeouts" {
  type = string
  default = "25m"
}

variable "name_node_pool" {
  type = string
  default = "terraform-pool"
}

variable "node_pool_location" {
  type = string
  default = "us-central1"
}

variable "node_pool_cluster_sefl_link" {
  type = string
  default = "google_container_cluster.terraform-vpc-native-cluster.self_link"
}

variable "node_count" {
  type = number
  default = 3
}

variable "min_node_count" {
  type = number
  default = 0
}

variable "max_node_count" {
  type = number
  default = 3
}

variable "node_locations" {
  type = list(string)
  default = [ "us-central1-c" ]
}

variable "max_surge" {
  type = number
  default = 1
}

variable "max_unavailable" {
  type = number
  default = 0
}

variable "value_of_preemptible" {
  type = bool
  default = false
}

variable "image_type" {
  type = string
  default = "COS_CONTAINERD"
}

variable "machine_type" {
  type = string
  default = "e2-medium"
}

variable "disk_size_gb" {
  type = number
  default = 30
}

variable "disk_type" {
  type = string
  default = "pd-standard"
}

variable "service_account_id" {
  type = string 
  default = "testing@devops-practice-411411.iam.gserviceaccount.com" 
}

variable "oauth_scopes_link" {
  type = list(string)
  default = [ "https://www.googleapis.com/auth/cloud-platform" ]
}

variable "tags" {
  type = list(string)
  default = [ "web" ]
}

variable "labels_environment" {
  type = string
  default = "production"
}

variable "labels_app" {
  type = string
  default = "terraform"
}

variable "value_of_enable_integrity_monitoring" {
  type = bool
  default = true
}

variable "value_of_secure_boot" {
  type = bool
  default = true
}

variable "value_of_auto_repair" {
 type   = bool
 default = true 
}

variable "value_of_auto_upgrade" {
  type = bool
  default = true
}

variable "max_pods_per_node" {
  type = number
  default = 110
}

variable "disable-legacy-endpoints" {
  type = string
  default = "true"
}

variable "name_notifications" {
  type = string
  default = "terra-gke-notifications"
}

variable "zone" {
  type = string
  default = "us-central1-a"
}

variable "project" {
  type = string
  default = "devops-practice-411411"
}