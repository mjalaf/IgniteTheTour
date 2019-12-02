#!/bin/bash
#set -eou pipefail
source ./scripts/variables.sh

sudo az acr login --name $(acrname)
