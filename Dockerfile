FROM node:18.2.0

WORKDIR /app

COPY package.json /app/package.json

RUN npm install -g npm@8.14.0

RUN npm install

RUN npm install -g @angular/cli@13.2.6

COPY . /app

CMD ng serve --host 0.0.0.0
