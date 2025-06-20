output "ip_names" {
  description = "List of all created public ip names"
  value       = azurerm_public_ip.public_ip[*].name
}

output "ip_ids" {
  description = "List of all created public ip ids"
  value       = azurerm_public_ip.public_ip[*].id
}

output "agw_ip_id" {
   value = azurerm_public_ip.public_ip[0].id
}
