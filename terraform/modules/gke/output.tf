output "gke_cluster_name" {
  value = google_container_cluster.terraform-vpc-native-cluster.name
}

output "gke_cluster_location" {
  value = google_container_cluster.terraform-vpc-native-cluster.location
}

output "gke_cluster_endpoint" {
  value = google_container_cluster.terraform-vpc-native-cluster.private_cluster_config[0].master_ipv4_cidr_block
}

output "gke_node_pool_names" {
  value = google_container_node_pool.terraform-pool.name
}

output "gke_node_pool_locations" {
  value = google_container_node_pool.terraform-pool.location
}

output "network_name" {
  value = google_container_cluster.terraform-vpc-native-cluster.network
}

output "node_locations" {
  value = google_container_node_pool.terraform-pool.node_locations
}

output "service_account" {
  value = google_container_node_pool.terraform-pool.node_config[0].service_account
}