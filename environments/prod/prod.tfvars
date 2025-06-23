# Provider Configuration
subscription_id = "1fe9963c-1fe2-4dcc-83a7-b49978ffb277"
tenant_id = "06698be3-7107-4e65-ac59-1967f7c7c43e"

# Resource Group 
resource_group = "krishna_RG"

# Vnet Config Data
vnet_name = "prod-kk-vnet"
vnet_tag = "Prod"
address_space = ["10.0.0.0/16"]

# Subnets Config Data
subnet_names  = ["prod-kkvm-subnet", "prod-sa-subnet", "prod-agw-subnet"]
address_prefixes = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

# VM Config Data
nic_name = "kk-prod-nic1"
vm_public_ip = "kk-prodvm-public_ip"
# vm_ip_name = "kk-prodvm-ip"
vm_name = "kk-prod-vm"
vm_size = "Standard_D2s_v3"
vm_tag = "Prod"
osdisk = "proddisk1"
computer_name = "Default"
admin_username = "azureuser"
admin_password = "Azure@123456"
local_file_path = "C:/Users/Krishnakumar.m/Desktop/Storage_acc.sh"
remote_directory = "/home/azureuser/kkvm"

# Network Security Group Data
nsg_name = "kkprodnsg1"
nsg_tag = "Prod"
nsg_rule1_name = "prod-inbound"
nsg_rule2_name = "prod-outbound"


# Storage Account Data
sa_name = "kkterrf123"
sa_container = "prod-tf-state"
sa_tag = "Prod"
account_tier = "Standard"


# Public IP Data
ip_names = ["agw-prod-ip", "lb-prod-ip"]
ip_tag = "Prod"

# Application Gateway Data
agw_name = "kk-prod-agw"
gateway_ip_configuration = "kk-agw-gwip"
frontend_port = "kk-agw-feport"
frontend_ip_configuration = "kk-agw-feipconfig"
backend_address_pool = "kk-agw-beap"
backend_http_settings = "kk-agw-behttp"
http_listener = "kk-agw-listner"
request_routing_rule = "kk-agw-rrr"

# App Service Data
aps = "kk-prod-aps"
asp = "kk-prod-asp"
