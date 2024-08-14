#FROM ubuntu:latest
#COPY . .
#USER root
#RUN apt-get install cowsay
#RUN apt-get install -y fortune-mod
#RUN chmod 777 wisecow.sh
#RUN chmod +x ./wisecow.sh
#EXPOSE 4499
#CMD wisecow.sh

# Base image
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Copy the shell script files
COPY  wisecow.sh .

# Set execute permissions for the shell script
RUN chmod +x wisecow.sh


# Expose the application port
EXPOSE 4499

# Start the application
CMD ["./wisecow.sh"]
