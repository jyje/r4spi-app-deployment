helm repo add argo https://argoproj.github.io/argo-helm

helm upgrade --cleanup-on-fail \
    -n argocd --create-namespace \
    --install \
    -f values.yaml \
    argocd .

helm uninstall argocd -n argocd
