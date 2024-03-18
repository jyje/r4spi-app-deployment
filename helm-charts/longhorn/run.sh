helm repo add longhorn https://charts.longhorn.io
helm repo update

helm pull longhorn/longhorn --untar 
cd longhorn

helm upgrade --cleanup-on-fail \
    -n longhorn-system --create-namespace \
    --install \
    -f values.yaml \
    longhorn .

helm uninstall longhorn -n longhorn-system
