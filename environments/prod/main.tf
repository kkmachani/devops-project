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
 source = "git::https://github.com/kkmachani/terraform.git//modules/vnet?ref=prod-modules"
 resource_group = var.resource_group
 vnet_name = var.vnet_name
 vnet_tag = var.vnet_tag
 address_space = var.address_space
 subnet_names = var.subnet_names
 address_prefixes = var.address_prefixes
}

# Network Security Module
module "nsg" {
  source = "git::https://github.com/kkmachani/terraform.git//modules/nsg?ref=prod-modules"
  resource_group = var.resource_group
  nsg_name = var.nsg_name
  nsg_rule1_name = var.nsg_rule1_name
  nsg_rule2_name = var.nsg_rule2_name
  nsg_tag = var.nsg_tag
}

# VM Module
module "vm" {
  source = "git::https://github.com/kkmachani/terraform.git//modules/vm?ref=prod-modules"
  resource_group = var.resource_group
  nic_name = var.nic_name
  vm_public_ip = var.vm_public_ip
  ip_name =  var.ip_name
  subnet_id = module.vnet.subnet_id
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

