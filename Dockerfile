FROM node:14
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
COPY ./client/. ./
RUN npm install
CMD ["npm", "run", "start"]
