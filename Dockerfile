FROM node:18.16.1-slim

WORKDIR /app

COPY package*.json ./

RUN apt-get update -y && apt-get install -y openssl

RUN npm install

COPY prisma ./prisma

RUN npx prisma generate

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
