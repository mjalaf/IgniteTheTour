DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/../variables.sh"

echo "Uninstalling frontend on second cluster ($(clustername2))"
kubectl config use-context $(clustername2)
helm delete --purge frontend
