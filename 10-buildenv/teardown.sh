#! /usr/bin/sh

# Create random string

RESOURCE_GROUP="rg-mlops-challenge"
RESOURCE_PROVIDER="Microsoft.MachineLearning"
RANDOM_REGION="uksouth"
WORKSPACE_NAME="mlw-mlops-challenge"
COMPUTE_INSTANCE="ci-mlops-challenge"

az ml workspace delete --name $WORKSPACE_NAME --resource-group $RESOURCE_GROUP --all-resources --no-wait --p -y
az group delete --name $RESOURCE_GROUP


