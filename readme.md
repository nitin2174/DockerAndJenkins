# DockerAndJenkins
Docker And Jenkins

1. docker-compose build jenkins

2. docker-compose -d jenkins

3. Go to http://localhost:10125 and Login with user:nitin and password: nitin

4. Build Now Job wordpress-mysql containers

5. Go to http://localhost:10127 and wordpress is ready to use.

For Kubernetes
1. minikube start
2.  kubectl create secret generic mysql-pass --from-literal=password=root
Go to project /k8s folder
3. kubectl create -f mysql-deployment.yaml
4. kubectl create -f wordpress-deployment.yaml
5. minikube service wordpress --url
