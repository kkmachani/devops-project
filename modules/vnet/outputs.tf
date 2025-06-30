output "vnet_name" {
 value = azurerm_virtual_network.vnet.name
}

output "subnet_names" {
  description = "List of all created subnet names"
  value       = azurerm_subnet.subnet[*].name
}

output "subnet_ids" {
  description = "List of all created subnet names"
  value       = azurerm_subnet.subnet[*].id
}

output "vm_subnet_id" {
  value = azurerm_subnet.subnet[0].id
}

output "ag_subnet_id" {
  value = azurerm_subnet.subnet[2].id
}
