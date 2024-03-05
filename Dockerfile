FROM node:alpine
MAINTAINER @ohbarye <over.rye@gmail.com>

RUN npm install -g swagger-merger watch && npm cache clean --force

CMD ["swagger-merger"]

