FROM node


ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=qwerty

RUN mkdir -p /docker-test     


# ALL acc to conatiner context...we are in container 


COPY . /docker-test

CMD ["node", "/docker-test/server.js"]