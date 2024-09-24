variable "project" {
  description = "The project ID where the SQL resources will be created"
  default     = "andheri-duniya"
}

variable "database_name" {
  description = "The name of the SQL database"
  default     = "made-by-terra"
}

variable "instance_name" {
  description = "The name of the SQL instance"
  default     = "terra-database-instance"
}

variable "region" {
  description = "The region where the SQL instance will be located"
  default     = "us-central1"
}

variable "database_version" {
  description = "The version of the SQL database"
  default     = "MYSQL_8_0"
}

variable "tier" {
  description = "The machine tier of the SQL instance"
  default     = "db-g1-small"
}

variable "edition" {
  description = "The edition of the SQL instance"
  default     = "ENTERPRISE"
}

variable "maintenance_day" {
  description = "The day of the week for maintenance window"
  default     = 7 // Sunday
}

variable "transaction_log_retention_days" {
  description = "The number of days to retain transaction logs"
  default     = 6
}

variable "backup_start_time" {
  description = "The start time for backups"
  default     = "23:00"
}

variable "authorized_network_name" {
  description = "The name of the authorized network"
  default     = "my-instance"
}

variable "authorized_network_value" {
  description = "The IP address or range of the authorized network"
  default     = "34.132.154.181"
}

variable "user_labels" {
  description = "User-defined labels for the SQL instance"
  default     = { env = "dev" }
}

variable "root_password" {
  description = "The root password for the SQL instance"
  default     = null
}

variable "root_password_generation" {
  description = "Generate a random root password if set to true"
  default     = false
}

variable "enable_backup" {
  description = "Enable or disable backups for the SQL instance"
  default     = true
}

variable "enable_deletion_protection" {
  description = "Enable or disable deletion protection for the SQL instance"
  default     = false
}

variable "host" {
  type = string
  default = "0.0.0.0/0"
}

variable "user_name" {
  type = string
  default = "root"
}

variable "update_track" {
  type = string
  default = "stable"
}