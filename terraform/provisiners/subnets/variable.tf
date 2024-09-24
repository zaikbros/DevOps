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

variable "subnet1_name" {
  type = string
  default = "terraform-private-subnet"
  
}

variable "subnet1_ip_cidr_range" {
  type = string
  default = "10.0.1.0/24"
}

variable "log_interval" {
  type = string
  default = "INTERVAL_10_MIN"
}

variable "log_flow_sampling" {
  type = number
  default = 0.5
}

variable "metadata" {
  type = string
  default = "INCLUDE_ALL_METADATA"
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

variable "subnet1_description" {
  type = string
  default = "this is private subnet"
}

variable "subnet2_name" {
  type = string
  default = "terraform-private2-subnet"
  
}

variable "subnet2_ip_cidre_range" {
  type = string
  default = "192.168.0.0/24"
}

variable "region_name" {
  type = string
  default = "us-central1"
  
}

variable "name-terraform-network" {
    type = string
    default = "terraform-network"
  
}

