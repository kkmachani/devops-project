# Vnet Output Variables
output "vnet_name" {
    value = module.vnet.vnet_name
}

output "subnet_names" {
    value = module.vnet.subnet_names
}

output "subnet_ids" {
    value = module.vnet.subnet_ids
}

output "vm_subnet_id" {
    value = module.vnet.vm_subnet_id
 }

# VM Output Variables
output "vm_name" {
    value = module.vm.vm_name
}

output "vm_size" {
    value = module.vm.vm_size
}

# Network Security Group Output Variables
output "nsg_name" {
    value = module.nsg.nsg_name
}

output "nsg_id" {
    value = module.nsg.nsg_id
}

# Public IP
output "ip_names" {
  value = module.public_ip.ip_names
}

output "ip_ids" { 
  value = module.public_ip.ip_ids
}


# Application Gateway
output "agw_name" {
  value = module.agw.agw_name
}

output "gateway_ip_configuration" {
  value = module.agw.gateway_ip_configuration
}

output "agw_subnet_id" {
  value = module.vnet.agw_subnet_id
}

output "agw_ip_id" {
  value = module.public_ip.agw_ip_id
}
