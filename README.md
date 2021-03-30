# Depoly simple apache-php based web application in kubernetes with mysql as backend
# Instructions:

## Deploy php frontend from my custom docker image in kubernetes:

Create and run ["deploy-web.yml"](https://github.com/pralove/lamp/blob/c95622712fe431032cbf3da281710aeac3c083f1/deploy-web.yml) file with the following command. This deploys simple php frontend which takes input from the user and store it in the mysql database. You can also query the data you have supplied from this front end. 

* vi deploy-web.yml
* $kubectl create -f deploy-web.yml

## Deploy mysql backend database in kubernetes:

Create and run ["deployment.yml"](https://github.com/pralove/lamp/blob/c95622712fe431032cbf3da281710aeac3c083f1/mysql/deployment.yml) file with the following command. This starts mysql container instance and connects with the php front end. 

* $vi deployment.yml
* $kubectl create -f deployment.yml

Create and run ["secret.yml"](https://github.com/pralove/lamp/blob/c95622712fe431032cbf3da281710aeac3c083f1/mysql/secret.yml).You can store sensitive information such as password in the resource type called secret in kubernetes. 

* $vi secret.yml
* $kubectl create -f secret.yml

Create and run ["configmap.yml"](https://github.com/pralove/lamp/blob/c95622712fe431032cbf3da281710aeac3c083f1/mysql/configmap.yml). This creates database named "test" in container runtime. ConfigMaps can be used to bind configuration files, command-line arguments, environment variables etc to containers and system components at runtime. 

* $vi configmap.yml
* $kubectl create -f configmap.yml



