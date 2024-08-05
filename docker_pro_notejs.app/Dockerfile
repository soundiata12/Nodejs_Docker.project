FROM ubuntu:18.04
RUN apt-get update 
RUN apt install wget unzip vim -y
RUN wget git clone https://github.com/utrains/nodejs-test-app.git
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nodejs npm 
WORKDIR /app
ADD . /app
RUN npm install
EXPOSE 80
CMD ["npm" , "run" ,"start:dev"]




