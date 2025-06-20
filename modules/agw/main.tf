data "azurerm_resource_group" "existing_rg" {
  name = var.resource_group
}

resource "azurerm_application_gateway" "agw" {
    name = var.agw_name
    resource_group_name = data.azurerm_resource_group.existing_rg.name
    location = data.azurerm_resource_group.existing_rg.location

    sku {
      name = "Standard_v2"
      tier = "Standard_v2"
      capacity = 2
    }

    gateway_ip_configuration {
      name = var.gateway_ip_configuration
      subnet_id = var.ag_subnet_id
    }

    frontend_port {
      name = var.frontend_port
      port = 80
    }

    frontend_ip_configuration {
      name = var.frontend_ip_configuration
      public_ip_address_id = var.agw_ip_id
    }

    backend_address_pool {
      name = var.backend_address_pool
    }

    backend_http_settings {
      name = var.backend_http_settings
      cookie_based_affinity = "Disabled"
      path = "/path1/"
      port = 80
      protocol = "Http"
      request_timeout = 60
    }

    http_listener {
      name = var.http_listener
      frontend_ip_configuration_name = var.frontend_ip_configuration
      frontend_port_name = var.frontend_port
      protocol = "Http"
    }

    request_routing_rule {
      name = var.request_routing_rule
      priority = 9
      rule_type = "Basic"
      http_listener_name = var.http_listener
      backend_address_pool_name = var.backend_address_pool
      backend_http_settings_name = var.backend_http_settings
    }

    tags = {
      Env = "Dev"
    }
}
