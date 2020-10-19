FROM mongo:3
ADD ./scripts-db /tmp/scripts-db 

# Modify child mongo to use /data/db-accounts as dbpath (because /data/db wont persist the build because it is already a VOLUME)
RUN mkdir -p /scripts-db \
    && echo "dbpath = scripts-db" > /etc/mongodb.conf \
    && chown -R mongodb:mongodb /scripts-db

RUN su - mongodb && mongod --fork --logpath /var/log/mongodb.log --dbpath /scripts-db  \
    && /tmp/scripts-db/mongo_create_insert.sh \
    && mongod --dbpath /scripts-db --shutdown \
    && chown -R mongodb /scripts-db 

# Make the new dir a VOLUME to persist it
VOLUME /scripts-db 

CMD ["mongod", "--config", "/etc/mongodb.conf", "--smallfiles"]
