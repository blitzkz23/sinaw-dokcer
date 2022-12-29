# buat dulu container baru
docker container create --name contohredis redis:latest

# jalankan container
docker container start contohredis

# melihat log dari container
docker container logs containerID/namacontainer

# melihat log dari container secara realtime
docker container logs -f containerID/namacontainer