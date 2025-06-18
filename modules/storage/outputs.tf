output "sa" {
  value = azurerm_storage_account.sa.name
}

output "sa_container" {
  value = azurerm_storage_account.sa.sa_container
}

output "account_tier" {
  value = azurerm_storage_account.sa.account_tier
}
