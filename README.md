# Depoly simple apache-php based web application in kubernetes with mysql as backend

## deploy simple php front end which takes input from the user and store it in the mysql database. You can also query the data from this front end. 

$kubectl create -f deploy-web.yml

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









Deploy mysql backend in kubernetes
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







