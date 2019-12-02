DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../variables.sh"
kubectl config use-context $(clustername)
helm delete --purge inventory
kubectl config use-context $(clustername2)
helm delete --purge inventory