helm --kubeconfig config repo add jetstack https://charts.jetstack.io
helm --kubeconfig config repo update
helm --kubeconfig config install \
    cert-manager jetstack/cert-manager \
    --namespace cert-manager \
    --wait \
    --create-namespace \
    --version v1.11 \
    --set installCRDs=true \
