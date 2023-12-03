FROM node:lts-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

CMD [ "npm","run","dev" ]

EXPOSE 3000