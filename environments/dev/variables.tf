variable "subscription_id" {
    type = string
}

variable "tenant_id" {
    type = string
}

variable "resource_group" {
  type = string
}


# Virtual Network  Variables

variable "vnet_name" {
  type = string
}

variable "vnet_tag" {
  type = string
}

variable "address_space" {
    type = list(string)
}

variable "subnet_names" {
    type = list(string)
}

variable "address_prefixes" {
    type = list(string)
}


# Virtual Machine Variables

variable "vm_public_ip" {
    type = string 
}

variable "nic_name" {
    type = string
}

# variable "vm_ip_name" {
#     type = string
# }

variable "subnet_id" {
    type = string
}

variable "vm_name" {
    type = string
}

variable "vm_size" {
    type = string
}

variable "vm_tag" {
    type = string
}

variable "osdisk" {
    type = string
}

variable "computer_name" {
    type = string
}

variable "admin_username" {
    type = string
}

variable "admin_password" {
    type = string
}

variable "local_file_path" {
    type = string
}

variable "remote_directory" {
    type = string
}


# Network Security Group Variables

variable "nsg_name" {
    type = string
}

variable "nsg_tag" {
    type = string
}

variable "nsg_rule1_name" {
    type = string
}

variable "nsg_rule2_name" {
    type = string
}

variable "nsg_id" {
    type = string
}


# Storage Account Variables

variable "sa_name" {
    type = string
}

variable "account_tier" {
    type = string
}

variable "sa_tag" {
    type = string
}

variable "sa_container" {
    type = string
}

# Public IP Variables

variable "ip_names" {
    type = list(string)
}

variable "ip_tag" {
    type = string
}

# Application Gwatway Variables

variable "agw_name" {
  type = string
}

variable "ag_subnet_id" {
  type = string
}

variable "gateway_ip_configuration" {
  type = string
}

variable "frontend_port" {
   type = string
}

variable "frontend_ip_configuration" {
   type = string
}

variable "agw_ip_id" {
  type = string
}

variable "backend_address_pool" {
  type = string
}

variable "backend_http_settings" {
  type = string
}

variable "http_listener" {
  type = string
}

variable "request_routing_rule" {
   type = string
}
