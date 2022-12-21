FROM node:alpine

EXPOSE 8082

#RUN apk update
#RUN apk add curl

WORKDIR /app

COPY package.json yarn.lock /app/

RUN yarn install --production

COPY . /app

CMD ["yarn", "start"]
