data "azurerm_resource_group" "existing_rg" {
  name = var.resource_group
}

resource "azurerm_service_plan" "asp" {
  name = var.asp
  resource_group_name = data.azurerm_resource_group.existing_rg.name
  location = data.azurerm_resource_group.existing_rg.location
  sku_name = "B1"
  os_type = "Linux"
}

resource "azurerm_linux_web_app" "aps" {
  name = var.aps
  resource_group_name = data.azurerm_resource_group.existing_rg.name
  location            = data.azurerm_resource_group.existing_rg.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config{
    application_stack {
      php_version = "8.0"
    }
  }

   tags = {
      Env = "Prod"
    }
}
