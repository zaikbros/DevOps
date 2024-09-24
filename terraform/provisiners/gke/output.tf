output "gke_cluster_name" {
  value = module.gke.gke_cluster_name
}

output "gke_cluster_location" {
  value = module.gke.gke_cluster_location
}

output "gke_cluster_endpoint" {
  value = module.gke.gke_cluster_endpoint
}

output "gke_node_pool_names" {
  value = module.gke.gke_node_pool_names
}

output "gke_node_pool_locations" {
  value = module.gke.gke_node_pool_locations
}

output "network_name" {
  value = module.gke.network_name
}

output "node_locations" {
  value = module.gke.node_locations
}

output "service_account" {
  value = module.gke.service_account
}