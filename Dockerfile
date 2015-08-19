FROM ubuntu

RUN apt-get -y update
RUN apt-get install -y nodejs
RUN apt-get -y install npm
RUN ln -s /usr/bin/nodejs /usr/bin/node;

ADD . /src
WORKDIR /src

RUN cd /src && npm install
EXPOSE  3000

CMD ["node", "/src/eat.js"]
