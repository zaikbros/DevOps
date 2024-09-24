resource "google_container_cluster" "terraform-vpc-native-cluster" {
  name               = var.cluster_name
  location           = var.cluster_location
  initial_node_count = var.cluster_initial_node_count
  
  
  network    = var.name-terraform-network
  subnetwork = var.subnet1_name
  remove_default_node_pool = var.value_of_remove_default_node_pool
  deletion_protection = var.value_of_deletion_protection
  addons_config {
    http_load_balancing {
      disabled = var.value_of_http_load_balancing_disabled
      
    }

    horizontal_pod_autoscaling {
      disabled =   var.value_of_horizontal_pod_autoscaling_disabled
    }
    gcp_filestore_csi_driver_config {
      enabled = var.value_of_gcp_filestore_csi_driver_config_enabled
    }
    
  }

  dns_config {
    cluster_dns = var.cluster_dns
  }

  monitoring_config {
    enable_components = var.cluster_monitoring_compon
  }

  logging_config {
    enable_components = var.cluster_logging_cpmpo
  }

  maintenance_policy {
    daily_maintenance_window {
      start_time = var.cluster_maintenance_start_time
    }
  }
  
  release_channel {
    channel = var.cluster_release_channel
  }

  cluster_autoscaling {
      autoscaling_profile = var.cluster_autoscaling
    }

  min_master_version = var.cluster_master_version

  ip_allocation_policy {
    
    cluster_secondary_range_name  = var.cluster_secondary_range_name
    services_secondary_range_name = var.services_secondary_range_name
    
  }

  private_cluster_config {
    enable_private_nodes = var.value_of_enable_private_nodes
    master_ipv4_cidr_block = var.cluster_master_ipv4_cidr_block
    enable_private_endpoint = var.value_of_enable_private_endpoint
    
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block = var.auth_master_ipv4_cidr_block
      display_name = var.name_cidr_block
      
    }
    
  }
  notification_config {
    pubsub {
      enabled = var.value_of_notification_config_enable
      topic   = google_pubsub_topic.terra-gke-notifications.id
    }
  }

  timeouts {
    create = var.create_timeouts
    update = var.update_timeouts
    delete = var.delete_timeouts
  }
  
}

resource "google_container_node_pool" "terraform-pool" {
  name       = var.name_node_pool
  location   = var.node_pool_location  
  cluster    = google_container_cluster.terraform-vpc-native-cluster.self_link
  node_count = var.node_count

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count  
    
  }

  node_locations = var.node_locations
  
  upgrade_settings {
    max_surge = var.max_surge
    max_unavailable = var.max_unavailable
  }

  # Size limits type
  node_config {
    preemptible = var.value_of_preemptible
    image_type = var.image_type
    machine_type = var.machine_type
    disk_size_gb = var.disk_size_gb
    disk_type = var.disk_type

    service_account = var.service_account_id
    oauth_scopes = var.oauth_scopes_link
    tags = var.tags
    shielded_instance_config {
      enable_integrity_monitoring = var.value_of_enable_integrity_monitoring
      enable_secure_boot = var.value_of_secure_boot
    }

    labels = {
      environment = var.labels_environment
      app         = var.labels_app
    }

    metadata = {
      disable-legacy-endpoints = var.disable-legacy-endpoints
    }
    
    //boot_disk_kms_key = "GMEK"
  }
  management {
    auto_repair = var.value_of_auto_repair
    auto_upgrade = var.value_of_auto_upgrade
    
  }
  max_pods_per_node = var.max_pods_per_node
  
  timeouts {
    create = var.create_timeouts
    update = var.update_timeouts
    delete = var.delete_timeouts
  }

}

resource "google_pubsub_topic" "terra-gke-notifications" {
  name = var.name_notifications
  timeouts {
    create = var.create_timeouts
    update = var.update_timeouts
    delete = var.delete_timeouts
  }
}

