module "gke" {
  source = "C:\\Users\\Syed Khaleelullah\\Desktop\\terraform\\modules\\gke"

  cluster_name                                     = var.cluster_name
  cluster_location                                 = var.cluster_location
  cluster_initial_node_count                       = var.cluster_initial_node_count
  name-terraform-network                           = var.name-terraform-network
  subnet1_name                                     = var.subnet1_name
  value_of_remove_default_node_pool                = var.value_of_remove_default_node_pool
  value_of_deletion_protection                     = var.value_of_deletion_protection
  value_of_http_load_balancing_disabled            = var.value_of_http_load_balancing_disabled
  value_of_horizontal_pod_autoscaling_disabled     = var.value_of_horizontal_pod_autoscaling_disabled
  value_of_gcp_filestore_csi_driver_config_enabled = var.value_of_gcp_filestore_csi_driver_config_enabled
  cluster_dns                                      = var.cluster_dns
  cluster_monitoring_compon                        = var.cluster_monitoring_compon
  cluster_logging_cpmpo                            = var.cluster_logging_cpmpo
  cluster_maintenance_start_time                   = var.cluster_maintenance_start_time
  cluster_release_channel                          = var.cluster_release_channel
  cluster_autoscaling                              = var.cluster_autoscaling
  cluster_master_version                           = var.cluster_master_version
  cluster_secondary_range_name                     = var.cluster_secondary_range_name
  services_secondary_range_name                    = var.services_secondary_range_name
  value_of_enable_private_nodes                    = var.value_of_enable_private_nodes
  auth_master_ipv4_cidr_block                      = var.auth_master_ipv4_cidr_block
  cluster_master_ipv4_cidr_block                   = var.cluster_master_ipv4_cidr_block
  value_of_enable_private_endpoint                 = var.value_of_enable_private_endpoint
  name_cidr_block                                  = var.name_cidr_block
  value_of_notification_config_enable              = var.value_of_notification_config_enable
  google_pubsub_topic_id                           = var.google_pubsub_topic_id
  create_timeouts                                  = var.create_timeouts
  update_timeouts                                  = var.update_timeouts
  delete_timeouts                                  = var.delete_timeouts
  name_node_pool                                   = var.name_node_pool
  node_pool_location                               = var.node_pool_location
  node_pool_cluster_sefl_link                      = var.node_pool_cluster_sefl_link
  node_count                                       = var.node_count
  min_node_count                                   = var.min_node_count
  max_node_count                                   = var.max_node_count
  node_locations                                   = var.node_locations
  max_surge                                        = var.max_surge
  max_unavailable                                  = var.max_unavailable
  value_of_preemptible                             = var.value_of_preemptible
  image_type                                       = var.image_type
  machine_type                                     = var.machine_type
  disk_size_gb                                     = var.disk_size_gb
  disk_type                                        = var.disk_type
  service_account_id                               = var.service_account_id
  oauth_scopes_link                                = var.oauth_scopes_link
  tags                                             = var.tags
  labels_environment                               = var.labels_environment
  labels_app                                       = var.labels_app
  value_of_enable_integrity_monitoring             = var.value_of_enable_integrity_monitoring
  value_of_secure_boot                             = var.value_of_secure_boot
  value_of_auto_repair                             = var.value_of_auto_repair
  value_of_auto_upgrade                            = var.value_of_auto_upgrade
  max_pods_per_node                                = var.max_pods_per_node
  disable-legacy-endpoints                         = var.disable-legacy-endpoints
  name_notifications                               = var.name_notifications
  zone                                             = var.zone
  project                                          = var.project
}