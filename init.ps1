helm repo add argo https://argoproj.github.io/argo-helm
kubectl create namespace argocd
helm upgrade --install --namespace  argocd  argocd argo/argo-cd -f .\infra\values\argocd.yaml
kubectl apply -f root.yaml
