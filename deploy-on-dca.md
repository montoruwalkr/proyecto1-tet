# Ruby on Rails TET Tracking-GPS

By: Alex Montoya Franco - amonto69@eafit.edu.co

# Despliegue en el DCA con Docker


## Instalar docker en la máquina virtual del DCA

    $ sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    $ sudo yum install docker-ce
    $ sudo systemctl start docker
    $ sudo systemctl enable docker

    instalar docker-compose: https://docs.docker.com/compose/install/

    $ sudo curl -L https://github.com/docker/compose/releases/download/1.24.0-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

    $ sudo chmod +x /usr/local/bin/docker-compose
    $ sudo usermod -aG docker user1
