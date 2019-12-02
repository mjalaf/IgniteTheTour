#!/bin/bash
#set -eou pipefail
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../variables.sh"

echo "Deleting CosmosDB $(cosmosname) in resource group $(rg)"
az cosmosdb delete --name $(cosmosname) --resource-group $(rg)
