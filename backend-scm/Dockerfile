FROM node:8
WORKDIR /usr/src/app
COPY package.json  .
COPY package-lock.json  .
RUN npm install 
COPY . .
EXPOSE 3030
CMD ["npm","start"]