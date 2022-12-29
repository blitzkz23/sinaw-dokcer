# buat volume baru untuk restore
docker volume create mongorestore

# restore volume dengan container run (sekali eksekusi dan langsung terhapus)
docker container run  --rm --name ubunturestore --mount "type=bind,source=/home/mznopal/Dev/data-engineering/sinaw-dokcer/docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# cek isi volume mongorestore
docker container create --name mongorestore --mount "type=volume,source=mongorestore,destination=/data/db" --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=naufal --env MONGO_INITDB_ROOT_PASSWORD=naufal mongo:latest
docker container start mongorestore
