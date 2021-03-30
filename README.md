# Depoly simple apache-php based web application in kubernetes with mysql as backend

## Deploy php front end:

Run above "deploy-web.yml" file in kubernetes using the following command in kubernetes. This deploys simple php front end which takes input from the user and store it in the mysql database. You can also query the data you have supplied from this front end. 

* $kubectl create -f deploy-web.yml

## Deploy mysql backend database:

Run "deploy-mysql.yml" with the following command which is inside the mysql folder. This starts mysql container instance and connects with the php front end. 

* $kubectl create -f deploy-mysql.yml

You can store sensitive information such as password in the resource type called secret in kubernetes. 





Create secret.yml file
kubectl create -f secret.yml

Create service.yml file
kubectl create -f service.yml

Create configmap.yml file
kubectl create -f configmap.yml

Create pvc.yml file
kubectl create -f pvc.yml

Deployment using Docker file
Create a Dockerfile
$ sudo nano Dockerfile

Create apache.conf
$ sudo nano apache.conf

Create public_html directory with the above content
Build the docker image
docker build -t <your_username>/myweb:1.0 .

Push your docker image to your repository
docker push <your_username>/myweb:1.0

Pull your docker image in kubernetes
docker pull myweb:1.0





