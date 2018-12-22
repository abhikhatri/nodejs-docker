FROM node:8
RUN useradd -ms /bin/bash deploy
COPY . /app
WORKDIR /app
RUN chown -R deploy:deploy /app
RUN chmod 755 /app
USER deploy
RUN npm install
CMD [ "npm", "start"];