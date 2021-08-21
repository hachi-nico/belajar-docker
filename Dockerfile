# syntax=docker/dockerfile:1

FROM node:current-buster-slim

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --production

COPY . .

CMD ["node", "server.js"]