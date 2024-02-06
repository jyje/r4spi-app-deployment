helm repo add minio-operator https://operator.min.io
helm repo update

helm pull bitnami/nginx --untar
mv nginx omv-nginx-proxy
cd omv-nginx-proxy

helm upgrade --cleanup-on-fail --install \
    -n omv --create-namespace \
    -f values.yaml \
    omv-nginx-proxy . 

helm uninstall omv-nginx-proxy -n omv
