FROM strapi/base:14

ENV NODE_ENV development

WORKDIR /app

COPY package.json .

COPY yarn.lock .

RUN yarn install

COPY favicon.ico .

COPY public/robots.txt public/

COPY extensions/ extensions/

COPY api/ api/

COPY config/ config/

#RUN yarn build

EXPOSE 1337

#CMD ["yarn", "start"]
CMD ["yarn", "develop"]
