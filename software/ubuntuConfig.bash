#!/usr/bin/env bash

apt-get update
apt-get -y dist-upgrade
apt-get -y install curl vim openssh-client git sudo gcc python3-dev pkg-config \
          build-essential libcurl4-openssl-dev libsqlite3-dev graphviz \
          apt-transport-https ca-certificates gnupg-agent software-properties-common \
          openssl emacs g++ libglu1-mesa python3-pip jq emacs wajig texlive-latex-extra \
	  nodejs npm openjdk-11-jdk golang


echo "dash dash/sh boolean false" | debconf-set-selections
DEBIAN_FRONTEND=noninteractive dpkg-reconfigure dash

curl -fsS https://dlang.org/install.sh | bash -s dmd

pushd /tmp
git clone https://github.com/abraunegg/onedrive.git
pushd /tmp/onedrive
. ~/dlang/dmd-*/activate && ./configure && make install
popd
rm -rf onedrive ~/dlang
popd

python3 -m pip install wheel
python3 -m pip install ipykernel notebook ipywidgets mpltools nbformat nbconvert ipyparallel okpy toolz bokeh dask distributed pandas pandas-datareader tables scikit-learn scikit-image snakeviz ujson s3fs fastparquet dask-ml cachey graphviz partd torch seaborn livelossplot torchvision pycm

# Add docker gpg key and repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install Docker
apt-get -y update
apt-get -y install docker-ce docker-ce-cli containerd.io

# Install azcli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash


# Install kubectl and helm
sudo apt-get update &&  sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update && sudo apt-get install -y kubectl
curl -sL https://raw.githubusercontent.com/helm/helm/master/scripts/get | sudo bash

# Install gmsh
pushd /usr/local
curl -sL http://gmsh.info/bin/Linux/gmsh-4.4.1-Linux64.tgz | tar --strip-components 1 -zxvf -
popd

rm -rf ~/.cache
rm -rf /var/lib/apt/lists/*
