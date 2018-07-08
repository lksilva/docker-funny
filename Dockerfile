FROM node:latest
MAINTAINER Lucas Silva
COPY . /var/www
ENV NODE_ENV=production
ENV PORT=3000
WORKDIR /var/www
RUN npm install
ENTRYPOINT [ "node", "index.js" ]
EXPOSE $PORT