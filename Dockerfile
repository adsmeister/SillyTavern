FROM node:lts-alpine
WORKDIR /home/node/app
COPY . .
RUN npm install --omit=dev
EXPOSE 10000
CMD ["node", "server.js"]
