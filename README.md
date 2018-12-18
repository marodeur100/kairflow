# Introduction
This Demo will show you how Airflow, Kubernetes and Docker can be assembled for a state-of-the-art lightweight Microservice ETL architecture

# VM Box Setup
* Download and install [Virtual Box](https://www.virtualbox.org/)
* Download Ubuntu 18.04+ 64Bit VDI [Image](https://www.osboxes.org/)
* Create New Linux Ubuntu 64 Bit VM in your VirtualBox and use VDI Image as Filesystem
* Start VM and open a console

# Docker Installation
* Follow the steps of the [Installation Guide](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
* Install [docker-compose] (https://docs.docker.com/compose/install/#install-compose) 

# docker-airflow
* git clone https://github.com/marodeur100/kairflow.git 
* Original [Installation Guide](https://github.com/puckel/docker-airflow) just FYI
* Run example by using Make run
* Access airflow console by opening (http://localhost:8080) within your VM

# Jupyter Installation (optional)
* Follow the steps of the [Installation Guide] (https://linuxhint.com/install-jupyter-notebook-ubuntu/)
* nohup jupyter notebook &

# Kubernetes Cluster 
* Follow Kubernetes for Python [Installation Guide] (https://github.com/kubernetes-client/Python)
* Install [Minikube](http://www.g33knotes.org/2016/09/using-minikube-for-kubernetes.html)
* 

# Kubernetes on Airflow Install
* git clone https://github.com/apache/incubator-airflow.git
* cd incubator-airflow
* sed -ie "s/KubernetesExecutor/LocalExecutor/g" scripts/ci/kubernetes/kube/configmaps.yaml
* export AIRFLOW_GPL_UNIDECODE=yes
* sudo chown -R :$GROUP /home/osboxes/.kube
* ./scripts/ci/kubernetes/docker/build.sh
* ./scripts/ci/kubernetes/kube/deploy.sh


# Example


