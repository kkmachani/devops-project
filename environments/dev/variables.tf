variable "subscription_id" {
   type = string
}

# variable "tenant_id" {
#     type = string
# }

# variable "client_id" {
#     type = string
# }

# variable "client_secret" {
#     type = string
# }

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

variable "ip_name" {
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
