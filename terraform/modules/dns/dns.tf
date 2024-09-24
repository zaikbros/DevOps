resource "google_dns_managed_zone" "private-zone" {
  project     = var.project
  name        = var.zone_name
  dns_name    = var.dns_name
  description = var.description
  labels      = var.labels
  

  visibility = var.visibility

  private_visibility_config {
    networks {
      network_url = var.network_url
    }
  }
}

resource "google_dns_record_set" "terra_record" {
  project      = var.project
  name         = var.record_name
  managed_zone = google_dns_managed_zone.private-zone.name
  type         = var.record_type
  ttl          = var.ttl
  rrdatas      = [var.rrdatas]
}


resource "google_compute_network" "network-1" {
  project                 = "andheri-duniya"
  name                    = "network-1"
  auto_create_subnetworks = false
}

resource "google_dns_managed_zone_iam_binding" "binding" {
  project = google_dns_managed_zone.private-zone.project
  managed_zone = google_dns_managed_zone.private-zone.name
  for_each = var.iam_bindings
  role    = each.value["role"]
  members = each.value["members"]
}

resource "google_dns_policy" "example-policy" {
  project = google_dns_managed_zone.private-zone.project
  name                      = "example-policy"
  enable_inbound_forwarding = true

  enable_logging = true

  networks {
    network_url = var.network_url
  }
}

resource "google_dns_response_policy" "response-policy" {
    project = google_dns_managed_zone.private-zone.project

  response_policy_name = "example-response-policy"

  networks {
    network_url = var.network_url
  }
}

resource "google_dns_response_policy_rule" "example-response-policy-rule" {
    project = google_dns_managed_zone.private-zone.project

  response_policy = google_dns_response_policy.response-policy.response_policy_name
  rule_name       = "example-rule"
  dns_name        = "dns.example.com."
  

  local_data {
    
    local_datas {
      name    = "terra-record.private.example.com."
      type    = "A"
      ttl     = 300
      rrdatas = [var.rrdatas]
      
    }
  }

}


