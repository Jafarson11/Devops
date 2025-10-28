variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "devops-project-rg"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "eastasia"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "devops-vnet"
}

variable "vnet_address_space" {
  description = "Address space for virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "devops-subnet"
}

variable "subnet_prefix" {
  description = "Address prefix for subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "public_ip_name" {
  description = "Name of the public IP"
  type        = string
  default     = "devops-public-ip"
}

variable "nic_name" {
  description = "Name of the network interface"
  type        = string
  default     = "devops-nic"
}

variable "app_service_plan_name" {
  description = "Name of the App Service Plan"
  type        = string
  default     = "devops-app-service-plan"
}

variable "app_service_name" {
  description = "Name of the App Service (must be globally unique)"
  type        = string
  default     = "devops-webapp-12345"
}

variable "admin_username" {
  description = "Admin username for VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for VM"
  type        = string
  sensitive   = true
  default     = "P@ssw0rd1234!"
}
