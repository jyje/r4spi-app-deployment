helm repo add longhorn https://charts.longhorn.io
helm repo update

helm pull longhorn/longhorn --untar --version 1.7.1
mv longhorn longhorn-1.7.1

helm upgrade --install --cleanup-on-fail \
    -n longhorn-system --create-namespace \
    -f values.yaml \
    longhorn \
    helm-charts/longhorn-1.7.1

helm uninstall longhorn -n longhorn-system
