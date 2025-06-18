# Provider Configuration
subscription_id = "1fe9963c-1fe2-4dcc-83a7-b49978ffb277"
# tenant_id = "06698be3-7107-4e65-ac59-1967f7c7c43e"

# Resource Group 
resource_group = "krishna_RG"

# Vnet Config Data
vnet_name = "dev-kk-vnet"
vnet_tag = "Dev"
address_space = ["10.0.0.0/16"]

# Subnets Config Data
subnet_names  = ["dev-kkvnet-subnet", "dev-sa-subnet"]
address_prefixes = ["10.0.1.0/24", "10.0.2.0/24"]

# VM Config Data
nic_name = "kk-dev-nic1"
vm_public_ip = "kk-devvm-public_ip"
ip_name = "kk-devvm-ip"
vm_name = "kk-devvm"
vm_size = "Standard_D2s_v3"
vm_tag = "Dev"
osdisk = "devdisk1"
computer_name = "Default"
admin_username = "azureuser"
admin_password = "Azure@123456"
local_file_path = "C:/Users/Krishnakumar.m/Desktop/Storage_acc.sh"
remote_directory = "/home/azureuser/kkvm"

# Network Security Group Data
nsg_name = "kknsg1"
nsg_tag = "Dev"
nsg_rule1_name = "dev-inbound"
nsg_rule2_name = "dev-outbound"


# Storage Account Data
sa_name = "kkterrf123"
sa_container = "dev-tf-state"
sa_tag = "Dev"
account_tier = "Standard"

# aks_name = "kk-dev-aks" 
# aks_nodepool_name = "kkdevaksnp12"
# aks_tag = "dev"
# dns_prefix = "kk-dev-aksdns"
