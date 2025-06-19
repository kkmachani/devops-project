# Provider Configuration
subscription_id = "1fe9963c-1fe2-4dcc-83a7-b49978ffb277"
tenant_id = "06698be3-7107-4e65-ac59-1967f7c7c43e"

# Resource Group 
resource_group = "krishna_RG"

# Vnet Config Data
vnet_name = "qaa-kk-vnet"
vnet_tag = "QA"
address_space = ["10.0.0.0/16"]

# Subnets Config Data
subnet_names  = ["qa-kkvm-subnet", "qa-sa-subnet", "qa-agw-subnet"]
address_prefixes = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

# VM Config Data
nic_name = "kk-qa-nic1"
vm_public_ip = "kk-qavm-public_ip"
# vm_ip_name = "kk-qavm-ip"
vm_name = "kk-qa-vm"
vm_size = "Standard_D2s_v3"
vm_tag = "QA"
osdisk = "qadisk1"
computer_name = "Default"
admin_username = "azureuser"
admin_password = "Azure@123456"
local_file_path = "C:/Users/Krishnakumar.m/Desktop/Storage_acc.sh"
remote_directory = "/home/azureuser/kkvm"

# Network Security Group Data
nsg_name = "kknsg1"
nsg_tag = "QA"
nsg_rule1_name = "qa-inbound"
nsg_rule2_name = "qa-outbound"


# Storage Account Data
sa_name = "kkterrf123"
sa_container = "qa-tf-state"
sa_tag = "QA"
account_tier = "Standard"


# Public IP Data
ip_names = ["agw-ip", "lb-ip"]
ip_tag = "QA"
