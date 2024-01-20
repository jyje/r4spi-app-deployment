helm repo add minio-operator https://operator.min.io
helm repo update

helm pull minio-operator/operator --untar
mv operator/ minio/

helm upgrade --cleanup-on-fail --install \
    -n minio-operator --create-namespace \
    -f values.yaml \
    minio-operator . 

helm uninstall minio-operator -n minio-operator
