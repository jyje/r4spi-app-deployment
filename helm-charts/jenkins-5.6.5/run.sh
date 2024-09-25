helm repo add jenkins https://charts.jenkins.io
helm repo update

helm pull jenkins/jenkins --untar --version 5.6.5
mv jenkins jenkins-5.6.5

helm upgrade --install \
    -n jenkins --create-namespace \
    jenkins \
    helm-charts/jenkins-5.6.5 \
    -f helm-charts/jenkins-5.6.5/values.yaml
