FROM ubuntu:latest

#set the working directory in the image
WORKDIR /app

#copy the files from the host file system to the image file system
COPY . /app

#install the necessary packages
RUN apt-get update && apt-get install -y python3

#set environment variables
ENV NAME World

#run a command to start the application
CMD["python3","app.py"]
