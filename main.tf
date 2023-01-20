resource "azurerm_servicebus_namespace" "servicebus_namespace" {
  name                = var.servicebus_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.servicebus_sku_name
  capacity            = var.servicebus_sku_capacity
  minimum_tls_version = var.minimum_tls_version
  zone_redundant      = var.zone_redundant
  local_auth_enabled  = var.local_auth_enabled
}

resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.servicebus_pe_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_dns_zone_group {
    name                 = var.private_dns_zone_group_name
    private_dns_zone_ids = var.private_dns_zone_id
  }
  
  private_service_connection {
    name                              = var.servicebus_private_sc_name
    private_connection_resource_id    = azurerm_servicebus_namespace.servicebus_namespace.id
    is_manual_connection              = var.is_manual_connection
    subresource_names                 = var.subresource_names
  }

  depends_on = [
    azurerm_servicebus_namespace.servicebus_namespace
  ]
}



