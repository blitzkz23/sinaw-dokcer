# buat volume
docker volume create mongovolume

# buat container baru dengan nama mongovolume, dengan argumen --mount untuk menentukan volume yang akan digunakan,
docker container create --name mongovolume --mount "type=volume,source=mongovolume,destination=/data/db" --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=naufal --env MONGO_INITDB_ROOT_PASSWORD=naufal mongo:latest