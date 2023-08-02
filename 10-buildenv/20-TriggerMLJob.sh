sp="sp-mlops-challenge"


subscriptionId="$(az account list --query "[?isDefault].id" -o tsv)" # Captures the subscription id as a variable.
echo $subscriptionId # Returns the contents of the variable.
group="$(az group list -otable --query "[?name=='rg-mlops-challenge'].name" -o tsv)"
echo $group # Returns the contents of the variable.



az ad sp create-for-rbac --name "$sp" --role contributor \
                              --scopes /subscriptions/$subscriptionId/resourceGroups/$group \
                              --sdk-auth
