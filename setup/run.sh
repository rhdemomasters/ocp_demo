oc apply -f 01_argocd_nd.yaml
oc apply -f 02_argocd.yaml -n 01_argocd
sleep 10 
oc apply -f 03_argocd_route.yaml

echo "argocd password:"
oc get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2
