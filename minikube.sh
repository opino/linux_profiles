#https://www.howtoforge.de/anleitung/so-installierst-du-podman-als-docker-alternative-unter-debian-11/
apt-get install curl vim podman -y

#https://minikube.sigs.k8s.io/docs/start/
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
install minikube-linux-amd64 /usr/local/bin/minikube

## Minikube starten
#https://minikube.sigs.k8s.io/docs/drivers/podman/
minikube config set rootless true
minikube start --driver=podman --container-runtime=containerd
