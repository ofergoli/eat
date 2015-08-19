FROM ubuntu:12.04

RUN sudo apt-get install --yes nodejs
COPY . /src
RUN cd /src; npm install
EXPOSE  3000

CMD ["node", "/src/eat.js"]