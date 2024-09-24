############################################
#### SERVICE ACCOUNT RESOURCE VARIABLES ####
############################################

variable "account_id" {
  type        = string
  default     = "service-account-id"
  description = "this is account id"
  sensitive   = false
}

variable "display_name" {
  type      = string
  default   = "this account is crated by tf"
  sensitive = false
}

variable "service_account_id" {
  type    = string
  default = "service-account-id@devops-practice-411411.iam.gserviceaccount.com"
}

variable "public_key_type" {
  type    = string
  default = "TYPE_X509_PEM_FILE"
}

variable "project" {
  type        = string
  default     = "devops-practice-411411"
  description = "this is project id"
}

variable "service_account_user_policy_role" {
    type    = string
    default = "roles/iam.serviceAccountUser"
    description = "service account user policy role" 
}

variable "service_account_key_policy_role" {
    type = string
    default = "roles/iam.serviceAccountKeyAdmin"
    description = "service account key policy role"
  
}

variable "service_account_policy_member" {
  type = string
  default = "serviceAccount:service-account-id@devops-practice-411411.iam.gserviceaccount.com"
  
}

variable "service_account_key_member" {
  type = string
  default = "serviceAccount:service-account-id@devops-practice-411411.iam.gserviceaccount.com"
  
}

variable "zone" {
  type = string
  default = "us-central1-b"
  
}