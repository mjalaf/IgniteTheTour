#!/bin/bash
#set -eou pipefail
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../variables.sh"

if [ "$(clustername)" != "$(kubectl config current-context)" ]; then
    prompt kubectl config use-context $(clustername)
fi

prompt kubectl get pods
