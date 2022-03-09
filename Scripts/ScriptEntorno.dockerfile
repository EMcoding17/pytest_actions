#Descarga Jenkins
FROM jenkins/jenkins:2.319.3-jdk11
#Etiquetas sobre el autor
LABEL description = "Imagen para trabajar con Ubuntu, Python y Pytest en un contenedor"
LABEL mainteiner = "Romero Sosa Emma Yuridia"
LABEL version = "0.1"
#Actualizacion de Ubuntu
USER root
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.25.3 docker-workflow:1.28"