#!/bin/bash
#set -eou pipefail
source ./scripts/variables.sh
# set subscription

echo Subscription: "$(subscription)"
az account set --subscription "$(subscription)"
