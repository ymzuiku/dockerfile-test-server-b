FROM node
WORKDIR /usr/src/app
COPY img ./
EXPOSE 3900
RUN yarn install && yarn run build
CMD ["node", "dist/index.js"]