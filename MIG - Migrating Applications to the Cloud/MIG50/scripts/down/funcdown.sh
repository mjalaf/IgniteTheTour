#!/bin/bash
#set -eou pipefail
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../variables.sh"

# create storage account
echo "Deleting function storage account $(storageaccount) in resource group $(rgfunc)"
az storage account delete --yes -g $(rgfunc) -n $(storageaccount)

# delete functionapp
echo "Deleting function app $(funcname) in resource group $(rgfunc)"
az functionapp delete -g $(rgfunc) -n $(funcname)
echo "Deleting function app resource group $(rgfunc)"
az group delete --yes --resource-group $(rgfunc)

