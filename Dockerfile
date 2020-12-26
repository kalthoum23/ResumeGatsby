FROM node:slim

WORKDIR /app

RUN npm install -g nodemon

COPY package.json .

RUN npm install

COPY . .

EXPOSE 8000

CMD [ "npm","run", "develop"]