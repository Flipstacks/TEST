FROM node
WORKDIR /app
COPY package.json .
RUN npm install --save core-js@3
RUN npm install
COPY . .
ENTRYPOINT [ "npm","start" ]