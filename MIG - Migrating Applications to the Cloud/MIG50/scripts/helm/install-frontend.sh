#!/bin/bash
#set -eou pipefail
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../variables.sh"

if [ "$(clustername)" != "$(kubectl config current-context)" ]; then
    prompt kubectl config use-context $(clustername)
fi
prompt helm upgrade frontend --install \
--namespace default \
--set image.registry="$(acrname).azurecr.io",ingress.enabled=True,ingress.hosts[0]=dashboard.kubernetes,applicationroutingzone=$(routingzone) \
--set producturl=http://$(fdproduct) \
--set inventoryurl=http://$(fdinventory) \
./
