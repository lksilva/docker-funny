FROM node:latest
LABEL Author="Lucas Silva" 
COPY . /var/www
ENV NODE_ENV=production
ENV PORT=8080
WORKDIR /var/www
ADD . /src
RUN npm install
ENTRYPOINT [ "node", "index.js" ]
EXPOSE $PORT

# FROM ubuntu:trusty
# LABEL Author="Lucas Silva" 
# RUN apt-get update && \
#     apt-get -y install curl && \
#     curl -sL https://deb.nodesource.com/setup | sudo bash - && \
#     apt-get -y install python build-essential nodejs
# RUN npm install -g nodemon
# ADD package.json /tmp/package.json
# RUN cd /tmp && npm install
# RUN mkdir -p /src && cp -a /tmp/node_modules /src/
# WORKDIR /var/www
# COPY . /var/www
# EXPOSE  8080
# CMD ["nodemon", "index.js"]