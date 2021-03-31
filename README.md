# Depoly simple apache-php based web application in kubernetes with mysql as backend
# Instructions:

## Deploy php frontend from my custom docker image in kubernetes:

Create this deployment ["deploy-web.yml"](https://github.com/pralove/lamp/blob/c95622712fe431032cbf3da281710aeac3c083f1/deploy-web.yml) running the following kubectl command. This deploys simple php frontend which takes input from the user and store it in the mysql database. You can also query the data you have supplied from this front end. 

* $kubectl create -f deploy-web.yml

## Deploy mysql backend database in kubernetes:

Create this mysql deployment ["deployment.yml"](https://github.com/pralove/lamp/blob/c95622712fe431032cbf3da281710aeac3c083f1/mysql/deployment.yml) running the following kubectl command. This starts mysql container instance and connects with the php front end. 

* $kubectl create -f deployment.yml

Run ["secret.yml"](https://github.com/pralove/lamp/blob/c95622712fe431032cbf3da281710aeac3c083f1/mysql/secret.yml) using the following kubectl command.You can store sensitive information such as password in the resource type called secret in kubernetes. 

* $kubectl create -f secret.yml

Create configmap ["configmap.yml"](https://github.com/pralove/lamp/blob/c95622712fe431032cbf3da281710aeac3c083f1/mysql/configmap.yml) using the kubectl command. This creates database named "test" in container runtime. ConfigMaps can be used to bind configuration files, command-line arguments, environment variables etc to containers and system components at runtime. 

* $kubectl create -f configmap.yml

Create service ["service.yml"](https://github.com/pralove/lamp/blob/4953576772be9765fbd8baa7446013a20ad44f48/mysql/service.yml) running the following kubectl command. This expose mysql running on a set of pods as a network service.

* $kubectl create -f service.yml

## Build docker image of php frontend using Dockerfile:

* Create [Dockerfile](https://github.com/pralove/lamp/blob/b835215d316b085089441eaef988dee55054e52d/Dockerfile) in your current directory
* Create [apache.conf](https://github.com/pralove/lamp/blob/b835215d316b085089441eaef988dee55054e52d/apache.conf) in your current directory
* Create "public_html" folder and copy all these [file and folders](https://github.com/pralove/lamp/tree/main/public_html) inside "public_html" folder you have created.
* $docker build -t <your_username>/your-repo . --> Run this command to build your docker image
* $docker push <your_username>/your-repo --> Run this command to push image to your docker repository
