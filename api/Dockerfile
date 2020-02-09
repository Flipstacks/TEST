FROM node
WORKDIR /app
COPY package.json .
#RUN apt-get update
RUN npm install --save core-js@3
RUN npm install
COPY . .
CMD [ "./Entrypoint.sh" ]
