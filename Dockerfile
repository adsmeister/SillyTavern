FROM node:lts-alpine

RUN apk add --no-cache git tini bash

WORKDIR /home/node/app

COPY . .

RUN npm install --omit=dev

# Force the container environment to map directly to Render's port requirements
EXPOSE 10000

# Explicitly pass runtime bypass flags directly into the execution command
CMD ["node", "server.js", "--listen=true", "--port=10000", "--whitelistMode=false", "--securityOverride=true", "--basicAuthMode=false"]
