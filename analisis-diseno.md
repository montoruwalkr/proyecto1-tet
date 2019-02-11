# Ruby on Rails TET Tracking-GPS

By: Alex Montoya Franco - amonto69@eafit.edu.co

# Descripción de aplicación

Aplicación web que permite registrar los puntos sobre las rutas que desee seguir un usuario, los puntos son mandados a un 
servidor en la Nube, almacenados y utilizados posteriormente para visualizar y compartir rutas con otros usuarios.

Proyecto 1 para la materia "ST0263 - Tópicos Especiales en Telemática".

El proyecto cubre:

* Aplicación del patron MVC a una aplicación Web.
* Uso de un framework web moderno -> Ruby on Rails.
* Configuración de ambientes: Desarrollo, Pruebas y Producción.

# 1. Análisis

## 1.1 Requisitos funcionales:

1. El sistema debe permitir a los usuarios registrarse con su nombre, email y contraseña.
2. El sistema debe permitir a los usuarios iniciar sesión con su email y contraseña.
3. El sistema debe permitir grabar una nueva ruta.
4. El sistema debe almacenar una ruta con los siguiente campos: Titulo, coordenadas, usuario.
5. El sistema debe permitir visualizar las rutas previamente almacenadas.
6. El sistema debe permitir compartir rutas con otros usuarios.

## 1.2 Definición de tecnología de desarrollo y despliegue para la aplicación:

* Framework web MVC: [Ruby on Rails 5.1.6.1](https://rubyonrails.org/)
* Base de datos: [PostgreSQL](https://www.postgresql.org/)
* Control de versiones: [Git](https://git-scm.com/)
* Repositorio de código: [GitHub](https://github.com/montoruwalkr/proyecto1-tet)
* Entorno de ejecución: [Contenedores Docker](https://www.docker.com/)
* Proxy Inverso: [Nginx](https://www.nginx.com/)
* Servicio de Nube: [Amazon Web Services](https://aws.amazon.com/)
* Geolocalización: [HTML5 Geolocation API](https://www.w3schools.com/html/html5_geolocation.asp)
* Visualización de Mapas: [Leaflet.js](https://leafletjs.com/)
* Trazado de Rutas: [Leaftlet.js y Polyline](https://leafletjs.com/reference-1.4.0.html#polyline)
* Proveedor de Mapas: [Mapbox](https://www.mapbox.com/)
* Solicitud de dominio: [Dot.tk](http://www.dot.tk/en/index.html?lang=en)

# 2. Desarrollo


# 3. Diseño:

## 3.1 Visualización web

![web1](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web1.PNG)

![web2](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web2.PNG)

![web3](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web3.PNG)

![web4](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web4.PNG)

![web5](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web5.PNG)

![web6](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web6.PNG)

![web7](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web7.PNG)

![web8](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web8.PNG)

![web9](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web9.PNG)

![web10](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web10.PNG)

![web11](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/web11.PNG)

## 3.2 Visualización móvil

![movil1](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil1.jpeg)

![movil2](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil2.jpeg)

![movil3](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil3.jpeg)

![movil4](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil4.jpeg)

![movil5](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil5.jpeg)

![movil6](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil6.jpeg)

![movil7](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil7.jpeg)

![movil8](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil8.jpeg)

![movil9](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil9.jpeg)

![movil10](https://github.com/montoruwalkr/proyecto1-tet/blob/master/project-images/movil10.jpeg)

## 3.3 Servicios web y registro de eventos:

El registro de eventos inicia cuando el usuario da clic en la opción “Record Route”, una vez seleccionada esta opción se activa la API de geolocalización de HTML5, la cual a través de la función “watchPosition()” empieza a grabar las coordenadas [latitud, longitud] del usuario y a guardarlas en una array de coordenadas; una vez el usuario de clic en la opción “Stop Record” la API de geolocalización, a través de javascript, activa el método “clearWatch()”, el cual para el método watchPosition() dejando de obtener las coordenadas del usuario.
Inmediatamente después se muestra en pantalla un mapa con la ruta trazada, esta se traza a partir del array de coordenadas guardadas en una variable de javascript y que al dar clic en Stop Record se envían a un campo oculto del formulario de Rails con id “tracking”.
El mapa se dibuja en pantalla gracias a una librería de javascript llamada Leaflet (mapas interactivos) y a una API de Mapbox (proveedor de mapas on-line), API que se accede a través de un access token.
El usuario da un nombre a su ruta y da clic en la opción “Create Route”, una vez ejecutada esta acción se guarda el nombre de la ruta (string), el usuario (se obtiene del usuario logeado) y las coordenadas (Array de coordenadas).
El usuario tiene acceso a la lista de rutas que ha guardado, para ver el mapa de una ruta específica, da clic en la opción “Show”, y el sistema recupera el array de coordenadas y traza la ruta nuevamente.

