terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
}


terraform {
  backend "azurerm" {
  }
}


# Vnet Module
module "vnet" {
 source = source = "git::https://github.com/kkmachani/devops-project.git//modules/vnet?ref=dev-modules"
 resource_group = var.resource_group
 vnet_name = var.vnet_name
 vnet_tag = var.vnet_tag
 address_space = var.address_space
 subnet_names = var.subnet_names
 address_prefixes = var.address_prefixes
}

# Network Security Module
module "nsg" {
  source = "../../modules/nsg"
  resource_group = var.resource_group
  nsg_name = var.nsg_name
  nsg_rule1_name = var.nsg_rule1_name
  nsg_rule2_name = var.nsg_rule2_name
  nsg_tag = var.nsg_tag
}

# VM Module
module "vm" {
  source = "../../modules/vm"
  resource_group = var.resource_group
  nic_name = var.nic_name
  vm_public_ip = var.vm_public_ip
  subnet_id = module.vnet.vm_subnet_id
  nsg_id = module.nsg.nsg_id
  vm_name = var.vm_name
  vm_size = var.vm_size
  vm_tag = var.vm_tag
  osdisk = var.osdisk
  computer_name = var.computer_name
  admin_password = var.admin_password
  admin_username = var.admin_username
  local_file_path = var.local_file_path
  remote_directory = var.remote_directory
  #  destination = "/tmp/$(basename ${var.local_file_path})"
}

# Public IP Module
module "public_ip" {
  source = "../../modules/public_ip"
  resource_group = var.resource_group
  ip_names = var.ip_names
  ip_tag = var.ip_tag
}

# Application Gateway Module
module "agw" {
  source = "../../modules/agw"
  resource_group = var.resource_group
  agw_name = var.agw_name
  gateway_ip_configuration = var.gateway_ip_configuration
  ag_subnet_id = module.vnet.agw_subnet_id
  frontend_port = var.frontend_port
  frontend_ip_configuration = var.frontend_ip_configuration
  agw_ip_id = module.public_ip.agw_ip_id
  backend_address_pool = var.backend_address_pool
  backend_http_settings = var.backend_http_settings
  http_listener = var.http_listener
  request_routing_rule = var.request_routing_rule
}

# App Service
module "app_svc" {
  source = "../../modules/app_svc"
  resource_group = var.resource_group
  aps = var.aps
  asp = var.asp
}
