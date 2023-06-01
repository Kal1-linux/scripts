apt-get update -y
apt-get install curl wget apt-transport-https -y
apt install docker.io -y
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
cp minikube-linux-amd64 /usr/local/bin/minikube
chmod 755 /usr/local/bin/minikube
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
apt-get update -y
apt-get install kubectl -y
kubectl version -o json
sudo usermod -aG docker $USER && newgrp docker
minikube start --driver=docker


