#FROM google/nodejs
FROM codermaze/alpine-node:10.12.0

WORKDIR /app
ADD package.json /app/
RUN npm install
ADD . /app

EXPOSE 8000

CMD ["node", "app.js"]
