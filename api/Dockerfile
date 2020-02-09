FROM node
WORKDIR /app
COPY package.json .
RUN npm install --save core-js@3
RUN npm install
COPY . .
RUN apt update
RUN apt-get install -y netcat
RUN chmod +x Entrypoint.sh
CMD [ "./Entrypoint.sh" ]