helm repo add oben01 https://oben01.github.io/charts
helm repo update

helm pull oben01/dashdot --untar 
cd dashdot

helm upgrade --cleanup-on-fail \
    -n dashdot --create-namespace \
    --install \
    -f values.yaml \
    dashdot .

helm uninstall dashdot -n dashdot
