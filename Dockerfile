FROM node:argon

MAINTAINER Chislon Chow "chislon@gmail.com"

RUN npm install -g pm2@latest
RUN pm2 install pm2-logrotate

RUN mkdir -p /usr/src/
RUN git clone https://github.com/chislon/api-abstraction.git /usr/src/app
WORKDIR /usr/src/app

RUN npm install

EXPOSE 80

CMD [ "pm2", "start", "process.json", "--no-daemon" ]
