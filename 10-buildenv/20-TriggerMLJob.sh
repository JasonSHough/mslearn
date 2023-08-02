subscriptionId="$(az account list --query "[?isDefault].id" -o tsv)" # Captures the subscription id as a variable.
echo $subscriptionId # Returns the contents of the variable.
