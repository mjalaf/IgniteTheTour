DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../variables.sh"
kubectl config use-context $(clustername)
helm delete --purge frontend
kubectl config use-context $(clustername2)
helm delete --purge frontend
