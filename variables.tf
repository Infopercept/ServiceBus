variable "resource_group_name" {
  description = "The name of your Azure Resource Group."
  type = string  
}

variable "location" {
  description = "The region where the keyvolt is created."
  type = string
}

variable "servicebus_name" {
  description = "The region where the keyvolt is created."
  type = string
}

variable "servicebus_sku_name" {
  description = "id of the subnet"
  type = string
  default = "Premium"
}

variable "servicebus_sku_capacity" {
  description = "id of the subnet"
  type = string
  default = "1"
}

variable "minimum_tls_version" {
  description = "id of the subnet"
  type = string
  default = "1.2"
}

variable "zone_redundant" {
  description = "id of the subnet"
  type = string
  default = true
}

variable "local_auth_enabled" {
  description = "id of the subnet"
  type = string
  default = true
}

variable "servicebus_pe_name" {
  description = "id of the subnet"
  type = string
}


variable "subnet_id" {
  description = "id of the subnet"
  type = string
}

variable "private_dns_zone_group_name" {
  description = "id of the subnet"
  type = string
  default = "default"
}

variable "private_dns_zone_id" {
  description = "The storage account container access type."
  type = list(string)  
  nullable = false
}

variable "servicebus_private_sc_name" {
  description = "id of the subnet"
  type = string
}

variable "is_manual_connection" {
  description = "id of the subnet"
  type = string
  default = false
}

variable "subresource_names" {
  description = "id of the subnet"
  type = list(string)
  default = ["namespace"]
}

