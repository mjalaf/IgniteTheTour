#/bin/bash
#set -eou pipefail
#source variables.sh
# set subscription

#echo Subscription: $subscription
#az account set --subscription "$(subscription)"

# set subscription to default
#az account set --subscription $(az account list | jq -r '.[] | select(.isDefault == true) | .id')
