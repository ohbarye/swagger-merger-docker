FROM node:alpine
MAINTAINER @ohbarye <over.rye@gmail.com>

RUN npm install -g swagger-merger watch

CMD ["swagger-merger"]

