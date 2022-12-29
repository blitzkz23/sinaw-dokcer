# matikan dulu container
docker container stop mongovolume

# buat container baru untuk backup yang menggunakan bind mount ke folder backup
# dan mount yang kedua berupa volume yang ingin dibackup
docker container create --name nginxbackup --mount "type=bind,source=/home/mznopal/Dev/data-engineering/sinaw-dokcer/docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest

# jalankan container
docker container start nginxbackup

# masuk ke container
docker exec -it nginxbackup bash

# cek isi folder backup
ls -l
cd backup
cd data

# archive folder dengan tar ke folder backup local yang telah dimount
tar cvf /backup/backup.tar.gz /data

# stop container
docker container stop nginxbackup

# delete container
docker container rm nginxbackup

# start mongovolume
docker container start mongovolume

# ==============================================================================================================================================
# BACKUP VOLUME DENGAN CONTAINER RUN
# ==============================================================================================================================================
docker image pull ubuntu:latest

docker container stop mongovolume

# backup volume dengan container run (sekali eksekusi dan langsung terhapus)
docker container run  --rm --name ubuntubackup --mount "type=bind,source=/home/mznopal/Dev/data-engineering/sinaw-dokcer/docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" ubuntu:latest tar cvf /backup/backup2.tar.gz /data

docker container start mongovolume