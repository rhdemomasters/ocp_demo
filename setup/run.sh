oc apply -f 01_argocd_ns.yaml
#oc apply -f 02_argocd.yaml -n argocd
oc apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/v1.3.5/manifests/install.yaml
sleep 10 
oc apply -f 03_argocd_route.yaml -n argocd 

echo "argocd password:"
oc get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2
