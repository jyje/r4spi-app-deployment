helm repo add adfinis https://charts.adfinis.com 
helm repo update

helm pull adfinis/cert-manager-issuers --untar
cd cert-manager-issuers

helm upgrade --cleanup-on-fail --install \
    -f values.yaml \
    cert-manager-issuers . 

helm uninstall cert-manager-issuers -n cert-manager
