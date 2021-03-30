# Depoly simple apache-php based web application in kubernetes with mysql as backend
# Instructions:

## Deploy php front end:

Run above "deploy-web.yml" file in kubernetes using the following command in kubernetes. This deploys simple php front end which takes input from the user and store it in the mysql database. You can also query the data you have supplied from this front end. 

* $kubectl create -f deploy-web.yml

## Deploy mysql backend database:

Run "deploy-mysql.yml" with the following command which is inside the mysql folder. This starts mysql container instance and connects with the php front end. 

* $kubectl create -f deploy-mysql.yml

You can store sensitive information such as password in the resource type called secret in kubernetes. 

* $kubectl create -f secret.yml

ConfigMaps can be used to bind configuration files, command-line arguments, environment variables etc to containers and system components at runtime. 

* $kubectl create -f configmap.yml



