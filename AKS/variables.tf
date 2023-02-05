variable "agent_count" {
  default = 1
}


variable "cluster_name" {
  default = "k8stest"
}

variable "dns_prefix" {
  default = "k8stest"
}

variable "resource_group_name" {
  default     = ""
  description = "Name of the resource group."
}

variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "ssh_public_key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "kubernetes_version" {
  default = "1.24.6"
}