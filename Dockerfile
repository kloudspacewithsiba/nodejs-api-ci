FROM node:19-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY ./src/app.js . 

EXPOSE 3000 

CMD ["node", "app.js"]