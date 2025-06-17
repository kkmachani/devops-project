# Vnet Output Variables
output "vnet_name" {
 value = module.vnet.vnet_name
}

output "subnet_name" {
 value = module.vnet.subnet_name
}

output "vm_name" {
 value = module.vm.vm_name
}

output "vm_size" {
 value = module.vm.vm_size
}

output "subnet_id" {
 value = module.vnet.subnet_id
 }

output "nsg_name" {
    value = module.nsg.nsg_name
}

output "nsg_id" {
    value = module.nsg.nsg_id
}

# output "aks_name" {
#  value = module.aks.aks_name
# }

# output "dns_prefix" {
#  value = module.aks.dns_prefix
# }

# output "aks_nodepool" {
#  value = module.aks.aks_nodepool
# }
