#########################################
########### VPC NETWORK #################
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

variable "name-terraform-network" {
    type = string
    default = "terraform-network"
  
}

variable "mtu" {
  type = number
  default = 1460
}

variable "routing_mode" {
  type = string
  default = "REGIONAL"
}

variable "vpc_description" {
  type = string
  default = "this vpc network and added some extra arguements"
}

variable "create_timeouts" {
  type = string
  default = "20m"
}

variable "delete_timeouts" {
  type = string
  default = "15m"
}

variable "update_timeout" {
  type = string
  default = "10m"
}