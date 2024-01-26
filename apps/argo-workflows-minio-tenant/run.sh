helm repo add minio-operator https://operator.min.io
helm repo update

helm pull minio-operator/tenant --untar
mv tenant argo-workflows-minio-tenant
cd argo-workflows-minio-tenant

helm upgrade --cleanup-on-fail --install \
    -n argo --create-namespace \
    -f values.yaml \
    argo-workflows-minio-tenant . 

helm uninstall argo-workflows-minio-tenant -n argo
