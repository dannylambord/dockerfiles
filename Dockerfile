FROM ubuntu:latest
RUN apt-get update


RUN apt-get install -y  nodejs
RUN apt-get install -y mongodb curl 


RUN curl -sL https://deb.nodesource.com/setup_10.x | bash  
RUN apt-get install -y nodejs
COPY ./poolmanage-ui ./poolmanage-ui
WORKDIR ./poolmanage-ui
RUN npm install
RUN npm install -g @angular/cli
CMD ng s --host 0.0.0.0




