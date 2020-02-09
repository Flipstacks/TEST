#!/bin/sh
until nc -z -v -w30 db 5432; do
    echo "Waiting for database connection..."
    # wait for 5 seconds before check again
    sleep 5
done

npx sequelize-cli db:migrate 
npx sequelize-cli db:seed:all 
npm start