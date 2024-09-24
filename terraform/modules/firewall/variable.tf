#########################################
###########  FIREWALL   #################
#########################################

variable "project" {
  type        = string
  default     = "devops-practice-411411"
  description = "this is project id"
}


variable "zone" {
  type = string
  default = "us-central1-a"
  
}

variable "name_firewall" {
  type = string
  default = "terraform-firewall"
  
}

variable "name-terraform-network" {
  type = string
  default = "terraform-network"
  
}

variable "protocol" {
  type = string
  default = "tcp"
  
}

variable "ports" {
  type = list(string)
  default = [ "80", "8080", "22", "443" ]
  
}

variable "target_tags" {
  type = list(string)
  default = [ "web", "http-server", "https-server" ]
  
}

variable "create_timeouts" {
  type = string
  default = "20m"
}

variable "delete_timeouts" {
  type = string
  default = "15m"
}

variable "update_timeouts" {
  type = string
  default = "10m"
}

variable "direction" {
  type = string
  default = "INGRESS"
}

variable "priority" {
  type = number
  default = 1000
}

variable "account_id" {
  type = string
  default = "service-account-id"
}