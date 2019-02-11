# Ruby on Rails TET Tracking-GPS

By: Alex Montoya Franco - amonto69@eafit.edu.co

# Despliegue en Amazon Web Services (AWS) con Docker

Seguir las instrucciones que se presentan en el video a continuación para crearse una Máquina virtual EC2 en Amazon Web Services

https://drive.google.com/file/d/1ITGHTak0gdUv3m1izGxQM0eNpNmvvNuU/view?usp=sharing

Despues de desarrollar la guia, se procede a instalar Docker, a clonar el repositorio y a subir los distintos servicios.

## Instalar docker en la Máquina virtual EC2 de AWS con Centos 7

    $ sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    $ sudo yum install docker-ce
    $ sudo systemctl start docker
    $ sudo systemctl enable docker

    instalar docker-compose: https://docs.docker.com/compose/install/

    $ sudo curl -L https://github.com/docker/compose/releases/download/1.24.0-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

    $ sudo chmod +x /usr/local/bin/docker-compose
    $ sudo usermod -aG docker user1

## Descargar el proyecto github

      $ git clone https://github.com/montoruwalkr/proyecto1-tet.git
      $ cd proyecto1-tet
      
## Ejecutar con Docker-compose

Ejecutar el docker-compose para aplicación Ruby on Rail

      $ docker-compose build
      $ docker-compose run app rake db:create RAILS_ENV=development
      $ docker-compose run app rake db:migrate db:seed RAILS_ENV=development
      $ docker-compose up

Si aparece el mensaje "No se reconoce docker-compose":

      $ /usr/local/bin/docker-compose build

comprobar la ejecución con un browser y visitar la URL:

    http://localhost_or_ipserver
