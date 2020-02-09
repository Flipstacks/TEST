FROM node:alpine
WORKDIR /app
COPY package.json .
RUN npm install --save core-js@3
RUN npm install
COPY . .
RUN apk update
RUN apk add -y netcat-openbsd rm -rf /var/lib/apt/lists/*
RUN chmod +x Entrypoint.sh
CMD [ "./Entrypoint.sh" ]