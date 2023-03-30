variable "resource_group_name" {
  default     = ""
  description = "Name of the resource group."
}

variable "resource_group_location" {
  default     = "northeurope"
  description = "Location of the resource group."
}

variable "storage_account_name" {
  default     = ""
  description = "Name of the storage account."
}

variable "sql_server_name" {
  default     = ""
  description = "Name of the SQL server."
}

variable "sql_server_admin_password" {
  default     = ""
  description = "Password for the SQL server admin."
}

variable "sql_server_admin_username" {
  default     = ""
  description = "Username for the SQL server admin."
}

variable "sql_server_version" {
  default     = "12.0"
  description = "Version of the SQL server."
}

variable "sql_server_start_ip_address" {
  default     = "0.0.0.0"
  description = "Start IP address for the SQL server firewall rule."
}

variable "sql_server_end_ip_address" {
  default     = "255.255.255.255"
  description = "End IP address for the SQL server firewall rule."
}