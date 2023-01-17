FROM node:18 As development

WORKDIR /usr/app

COPY package.json ./

COPY . .
RUN yarn

EXPOSE 3000
CMD [ "yarn", "dev" ]