FROM httpd:2.4.62

RUN apt update 

RUN apt install wget unzip vim -y

EXPOSE 3000

RUN wget https://github.com/utrains/static-resume/archive/refs/heads/main.zip

RUN unzip main.zip

RUN cp -r static-resume-main/* /usr/local/apache2/htdocs 
