data "azurerm_resource_group" "existing_rg" {
  name = var.resource_group
}

resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  resource_group_name      = data.azurerm_resource_group.existing_rg.name
  location                 = data.azurerm_resource_group.existing_rg.location
  account_tier             = var.account_tier
  account_replication_type = "LRS"

  tags = {
    environment = var.sa_tag
  }
}

resource "azure_storage_container" "sa_container" {
    name               = var.sa_container
    storage_account_id = azurerm_storage_account.sa.id
}
