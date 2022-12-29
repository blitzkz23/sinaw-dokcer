# atur limit memory dan cpu, --memory 100m artinya 100mb, --cpus 0.5 artinya setengah core
docker container create --name smallnginx --publish 8080:80 --memory 100m --cpus 0.5 nginx:latest

# jalankan container
docker container start smallnginx

# lihat resource yang digunakan
docker container stats 