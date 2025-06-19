data "azurerm_resource_group" "existing_rg" {
   name = var.resource_group
}

resource "azurerm_public_ip" "public_ip" {
   count = length(var.ip_names)
   name = var.ip_names[count.index]
   resource_group_name = data.azurerm_resource_group.existing_rg.name
   location            = data.azurerm_resource_group.existing_rg.location
   allocation_method   = "Static"

   tags = {
     environment = var.ip_tag
   }
}
