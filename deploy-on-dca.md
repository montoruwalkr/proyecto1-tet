# Ruby on Rails TET Tracking-GPS

By: Alex Montoya Franco - amonto69@eafit.edu.co

# Despliegue en el DCA con Docker


## Instalar docker en la máquina virtual del DCA Centos 7

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
    
