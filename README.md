# Depoly simple apache php web application in kubernetes with mysql as backend
Deploy front end web application based of apache using the following command in K8s
Create "deploy-web.yml" file
kubectl create -f deploy-web.yml

Deploy backedn mysql in kubernetes
Create deploy-mysql.yml file
kubectl create -f deploy-mysql.yml

Create secret.yml file
kubectl create -f secret.yml

Create service.yml file
kubectl create -f service.yml

Create configmap.yml file
kubectl create -f configmap.yml

Create pvc.yml file
kubectl create -f pvc.yml







