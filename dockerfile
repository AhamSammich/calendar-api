FROM node:18-bullseye-slim

ENV PORT=8080

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "server.js"]