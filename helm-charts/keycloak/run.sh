helm upgrade --cleanup-on-fail --install \
    -n keycloak --create-namespace \
    -f helm-charts/keycloak/values.yaml \
    keycloak \
    helm-charts/keycloak
