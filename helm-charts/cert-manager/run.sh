helm repo add jetstack https://charts.jetstack.io
helm repo update

helm upgrade --install \
    cert-manager jetstack/cert-manager \
    --namespace cert-manager --create-namespace \
    --set installCRDs=true

helm uninstall cert-manager --namespace cert-manager

helm pull jetstack/cert-manager --untar
