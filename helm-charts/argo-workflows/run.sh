helm repo add argo https://argoproj.github.io/argo-helm
helm pull argo/argo-workflows --untar

helm upgrade --cleanup-on-fail \
    -n argo --create-namespace \
    --install \
    -f values.yaml \
    argo-workflows .

helm uninstall argo-workflows -n argo
