helm upgrade --cleanup-on-fail --install \
    -n nextcloud --create-namespace \
    -f apps/nextcloud/values.yaml \
    nextcloud \
    apps/nextcloud