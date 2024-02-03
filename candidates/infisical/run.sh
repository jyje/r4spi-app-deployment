helm repo add infisical https://dl.cloudsmith.io/public/infisical/helm-charts/helm/charts
helm repo update

helm pull infisical/infisical --untar
cd infisical

helm upgrade --cleanup-on-fail --install \
    -n infisical --create-namespace \
    -f values.yaml \
    infisical . 

helm uninstall infisical -n infisical
