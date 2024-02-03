helm repo add infisical https://dl.cloudsmith.io/public/infisical/helm-charts/helm/charts
helm repo update

helm pull infisical/secrets-operator --untar
cd secrets-operator

helm upgrade --cleanup-on-fail --install \
    -n infisical --create-namespace \
    -f values.yaml \
    secrets-operator . 

helm uninstall secrets-operator -n infisical
