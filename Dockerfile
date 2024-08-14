FROM ubuntu:latest
COPY . .
USER root
RUN apt-get install cowsay
RUN apt-get install -y fortune-mod
RUN chmod 777 wisecow.sh
RUN chmod +x ./wisecow.sh
EXPOSE 4499
CMD wisecow.sh
