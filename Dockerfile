FROM ubuntu:latest
MAINTAINER Allan Clark <allan.clark@me.com>

RUN apt-get -qq update
RUN apt-get install -y python-software-properties python g++ make software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get -qq update
RUN apt-get install -y nodejs
RUN npm install -g tty.js

EXPOSE 3000
ENTRYPOINT ["tty.js", "--port", "3000"]
