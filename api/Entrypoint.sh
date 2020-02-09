#!/bin/sh
while ! wget db:
npx sequelize-cli db:migrate 
npx sequelize-cli db:seed:all 
npm start 