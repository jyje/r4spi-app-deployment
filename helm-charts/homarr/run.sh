
helm repo add longhorn https://charts.longhorn.io
helm repo update

helm pull oben01/homarr --untar 
cd longhorn

helm upgrade --cleanup-on-fail \
    -n dashboard-system --create-namespace \
    --install \
    -f values.yaml \
    homarr .

helm uninstall homarr -n dashboard-system
