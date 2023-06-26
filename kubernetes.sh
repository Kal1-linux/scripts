sudo apt-get update -y
sudo apt-get install curl wget apt-transport-https -y
sudo apt install docker.io -y
sudo wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube
sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
sudo echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update -y
sudo apt-get install kubectl -y
kubectl version -o json
sudo usermod -aG docker $USER && newgrp docker
sudo chmod 777 /var/lib/docker.sock
minikube start --driver=docker


