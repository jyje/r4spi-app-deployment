helm repo add minio-operator https://operator.min.io
helm repo update

helm pull bitnami/nginx --untar
mv nginx nginx-proxy-omv
cd nginx-proxy-omv

helm upgrade --cleanup-on-fail --install \
    -n omv --create-namespace \
    -f values.yaml \
    nginx-proxy-omv . 

helm uninstall nginx-proxy-omv -n omv
