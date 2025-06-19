#!/bin/bash

# Variables
RESOURCE_GROUP="krishna_RG"
STORAGE_ACCOUNT="kkterrf123"
CONTAINER_NAME="prod-tf-state"
LOCATION="centralus"

# Check if the resource group exists
echo "Checking if Resource Group $RESOURCE_GROUP exists ..."
RG_EXISTS=$(az group show --name $RESOURCE_GROUP --query "name" --output tsv 2>/dev/null)

if [ -z "$RG_EXISTS" ]; then
    echo "Resource group $RESOURCE_GROUP does not exist. Creating it..."
    az group create --name $RESOURCE_GROUP --location $LOCATION

    exit 1
else
    echo "Resource group $RESOURCE_GROUP exists."
fi
sleep 10

# Check if the storage account exists
echo "Checking if Storage Account $STORAGE_ACCOUNT exists ..."
STORAGE_EXISTS=$(az storage account show --name $STORAGE_ACCOUNT --resource-group $RESOURCE_GROUP --query "name" --output tsv 2>/dev/null)

if [ -z "$STORAGE_EXISTS" ]; then
    echo "Storage Account $STORAGE_ACCOUNT does not exist. Creating it..."
    az storage account create \
        --resource-group $RESOURCE_GROUP \
        --name $STORAGE_ACCOUNT \
        --location $LOCATION \
        --sku Standard_LRS \
        --kind StorageV2
else
    echo "Storage Account $STORAGE_ACCOUNT already exists. Skipping creation..."
fi
sleep 10

# Retrieve the Storage Account Key
echo "Retrieving storage account key..."
STORAGE_KEY=$(az storage account keys list \
    --resource-group $RESOURCE_GROUP \
    --account-name $STORAGE_ACCOUNT \
    --query '[0].value' --output tsv)

# Check if container exists
CONTAINER_EXISTS=$(az storage container list \
    --account-name $STORAGE_ACCOUNT \
    --account-key $STORAGE_KEY \
    --query "[?name=='$CONTAINER_NAME'].name" \
    --output tsv)

if [ -z "$CONTAINER_EXISTS" ]; then
    echo "Container $CONTAINER_NAME does not exist. Creating it..."
    az storage container create \
        --name $CONTAINER_NAME \
        --account-name $STORAGE_ACCOUNT \
        --account-key $STORAGE_KEY
else
    echo "Container $CONTAINER_NAME already exists. Skipping creation..."
fi
sleep 5

echo "Storage setup for $STORAGE_ACCOUNT completed successfully."
