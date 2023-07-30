#! /usr/bin/sh

# Create random string

RESOURCE_GROUP="rg-mlops-challenge"
RESOURCE_PROVIDER="Microsoft.MachineLearning"
RANDOM_REGION="uksouth"
WORKSPACE_NAME="mlw-mlops-challenge"
COMPUTE_INSTANCE="ci-mlops-challenge"


# Register the Azure Machine Learning resource provider in the subscription
echo "Register the Machine Learning resource provider:"
az provider register --namespace $RESOURCE_PROVIDER

# Create the resource group and workspace and set to default
echo "Create a resource group and set as default:"
az group create --name $RESOURCE_GROUP --location $RANDOM_REGION
az configure --defaults group=$RESOURCE_GROUP

echo "Create an Azure Machine Learning workspace:"
az ml workspace create --name $WORKSPACE_NAME 
az configure --defaults workspace=$WORKSPACE_NAME 

# Create compute instance
echo "Creating a compute instance with name: " $COMPUTE_INSTANCE
az ml compute create --name ${COMPUTE_INSTANCE} --size STANDARD_DS11_V2 --type ComputeInstance -d 15
az ml compute create --name ${COMPUTE_INSTANCE} --size STANDARD_DS11_V2 --type ComputeInstance -d 15


echo "DataAsset: " 
az ml data create -f diabetes-dev.yml


echo "az group delete --nameaz ml compute create --name ci-mlops-challenge -f compute_instance.yml
#az ml job create --file job.yml --resource-group rg-mlops-challenge --workspace-name mlw-mlops-challenge
