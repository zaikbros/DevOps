variable "project" {
  description = "The project ID where the DNS zone will be created"
  default     = "andheri-duniya"
}

variable "zone_name" {
  description = "The name of the DNS zone"
  default     = "private-zone"
}

variable "dns_name" {
  description = "The DNS name of the zone"
  default     = "private.example.com."
}

variable "description" {
  description = "The description of the DNS zone"
  default     = "Example private DNS zone"
}

variable "labels" {
  description = "The labels for the DNS zone"
  default = {
    env = "dev"
  }
}

variable "visibility" {
  description = "The visibility of the DNS zone"
  default     = "private"
}

variable "network_url" {
  description = "The URL of the network associated with the private zone"
  default     = "projects/andheri-duniya/global/networks/default"
}

variable "record_name" {
  description = "The fully qualified domain name (FQDN) of the DNS record"
  default     = "terra-record.private.example.com."
}


variable "record_type" {
  description = "The type of the DNS record"
  default     = "A"
}

variable "ttl" {
  description = "The time to live (TTL) value for the DNS record"
  default     = 300
}

variable "rrdatas" {
  type = string
  description = "The resource data of the DNS record"
  default     = "192.0.0.0"
}

variable "iam_bindings" {
  description = "IAM bindings for the DNS zone"
  type = map(object({
    role    = string
    members = list(string)
  }))
  default = {
    "dns_admin" = {
      role    = "roles/dns.admin"
      members = ["user:syedkhaleel128@gmail.com", "serviceAccount:550626033843-compute@developer.gserviceaccount.com"]
    }
    // Add more IAM bindings as needed
  }
}