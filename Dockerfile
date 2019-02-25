FROM ubuntu

LABEL maintainer="dizmaland@gmail.com"

RUN apt-get update -y && apt-get dist-upgrade -y 

RUN apt install curl -y && apt install gnupg -y

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -

RUN apt install nodejs -y

RUN mkdir /serverjs

VOLUME ["/serverjs"]

WORKDIR /serverjs

CMD cd /serverjs

RUN npm install express --save && npm install -g nodemon -y && npm install passport-http-bearer

EXPOSE 3000/tcp

