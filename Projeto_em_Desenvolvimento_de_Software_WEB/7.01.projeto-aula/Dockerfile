FROM node:19.5.0-alpine
WORKDIR /user/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3004
CMD [ "npm", "start" ]