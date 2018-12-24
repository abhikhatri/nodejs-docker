FROM node:8
COPY . /app
WORKDIR /app
RUN npm install -g nodemon
RUN npm install 