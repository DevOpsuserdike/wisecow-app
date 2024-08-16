FROM ubuntu:latest
USER root
COPY . .
RUN apt-get update
RUN apt-get install -y cowsay
RUN apt-get install -y fortune-mod
RUN apt-get install -y dos2unix
RUN apt-get update && apt-get install -y netcat-traditional
ENV PATH="$PATH:/usr/games"
RUN export PATH
RUN chmod 777 wisecow.sh
RUN dos2unix wisecow.sh
RUN chmod +x ./wisecow.sh
EXPOSE 4499
CMD ["./wisecow.sh"]
