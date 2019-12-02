#!/bin/bash
#set -eou pipefail
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../variables.sh"


echo "Deleting resource groups $(rg), $(rg2) and $(rgfunc)"
az group delete --yes --resource-group $(rg)
az group delete --yes --resource-group $(rg2)
az group delete --yes --resource-group $(rgfunc)
