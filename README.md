# express-width-typescript


FROM node:20

WORKDIR /app
RUN apt-get update -y && apt-get install -y openssl

COPY package*.json ./

RUN npm install

COPY prisma ./prisma

RUN npx prisma generate

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
