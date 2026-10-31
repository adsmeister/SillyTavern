FROM node:lts-alpine

RUN apk add --no-cache git tini bash

WORKDIR /home/node/app

COPY . .

RUN npm install --omit=dev

# Completely disable the rigid shell script that forces port 8000
ENTRYPOINT []

EXPOSE 10000

CMD ["node", "server.js"]
