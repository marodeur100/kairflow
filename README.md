# Introduction
This Demo will show you how Airflow, Kubernetes and Docker can be assembled for a state-of-the-art lightweight Microservice ETL architecture

# VM Box Setup
* Download and install [Virtual Box](https://www.virtualbox.org/)
* Download Ubuntu 18.04 64Bit VDI [Image](https://www.osboxes.org/)
* Create New Linux Ubuntu 64 Bit VM in your VirtualBox and use VDI Image as Filesystem
* Assigne 10GB RAM and 4 CPU minimum 
* Start VM and open a console
* Correct keyboard layout: sudo dpkg-reconfigure keyboard-configuration

# Docker Installation
* sudo apt-get install curl
* Follow the steps of the [Installation Guide](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04)
* Be careful, currently only Docker-CE version 18.06.1-ce is working fine: 
    sudo apt-get install docker-ce=18.06.1~ce~3-0~ubuntu
* Install [docker-compose] (https://docs.docker.com/compose/install/#install-compose) 

# Install Minikube
* sudo apt-get install curl
* Install [VirtualBox](https://websiteforstudents.com/installing-virtualbox-5-2-ubuntu-17-04-17-10)
* Follow the steps of the [Installation Guide](https://computingforgeeks.com/how-to-install-minikube-on-ubuntu-18-04/)
* Start Minikube with: sudo minikube start --vm-driver=none

# Sometimes restart of Minikube is required
cd /etc/kubernetes/ && \
sudo rm *.conf && \
cd && \
sudo minikube delete # may also need rm -rf ~/.minikube && \
sudo minikube start --vm-driver=none

# Python / Jupyter Installation 
* Follow the steps of the [Installation Guide] (https://linuxhint.com/install-jupyter-notebook-ubuntu/)
* nohup jupyter notebook &

# Airflow on Minicube Install
* git clone https://github.com/apache/incubator-airflow.git
* sudo apt-get install socat
* Fix missing python-setuptools: sudo apt-get install python-setuptools
* cd incubator-airflow
* export AIRFLOW_GPL_UNIDECODE=yes
* sudo chown -R :$GROUP /home/osboxes/.kube4
* Fix the issue that apt-get does not work within docker: sudo ln -sf /run/systemd/resolve/resolv.conf /etc/resolv.conf
* ./scripts/ci/kubernetes/docker/build.sh
* ./scripts/ci/kubernetes/kube/deploy.sh
* After you should receive an Airflow ready-message
* kubectl port-forward $WEB 8080:8080
* Open [airflow](http://localhost:8080) and use airflow/airflow as login


# Example


