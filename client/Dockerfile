FROM node:alpine AS builder
WORKDIR /app
COPY package.json .
RUN npm install --save core-js@3
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=builder /app/build /static
COPY ./nginx.conf /etc/nginx/nginx.conf