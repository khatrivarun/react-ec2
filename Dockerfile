FROM node:16-alpine

WORKDIR /client

COPY package.json .

RUN npm install
RUN npm install -g serve

COPY . ./

RUN npm run build

CMD ["serve",  "build/", "-p", "3000"]