helm repo add longhorn https://charts.longhorn.io
helm repo update

helm pull longhorn/longhorn --untar --version 1.5.3
mv longhorn longhorn-1.5.3
cd longhorn-1.5.3

helm upgrade --cleanup-on-fail \
    -n longhorn-system --create-namespace \
    --install \
    -f values.yaml \
    longhorn .

helm uninstall longhorn -n longhorn-system
