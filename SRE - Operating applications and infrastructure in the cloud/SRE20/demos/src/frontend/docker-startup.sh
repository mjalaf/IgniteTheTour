cd dist
PRODUCT_SERVICE_BASE_URL=${PRODUCT_SERVICE_BASE_URL//\//\\\/}
grep -rl '%%PRODUCT_SERVICE_BASE_URL%%' . | xargs sed -i "s/%%PRODUCT_SERVICE_BASE_URL%%/$PRODUCT_SERVICE_BASE_URL/g"

INVENTORY_SERVICE_BASE_URL=${INVENTORY_SERVICE_BASE_URL//\//\\\/}
grep -rl '%%INVENTORY_SERVICE_BASE_URL%%' . | xargs sed -i "s/%%INVENTORY_SERVICE_BASE_URL%%/$INVENTORY_SERVICE_BASE_URL/g"

caddy -port $PORT