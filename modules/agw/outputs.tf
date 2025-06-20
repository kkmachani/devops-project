output "agw_name" {
  value = azurerm_application_gateway.agw.name
}

output "gateway_ip_configuration" {
  value = azurerm_application_gateway.agw.gateway_ip_configuration
}
