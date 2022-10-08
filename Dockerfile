FROM node:16-alpine

WORKDIR /client

COPY package.json .

RUN npm install
RUN npm install -g serve
RUN npm run build

COPY . ./

CMD ["serve",  "build/", "-p", "3000"]