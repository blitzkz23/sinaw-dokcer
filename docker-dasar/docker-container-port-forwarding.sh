# download image nginx
docker image pull nginx:latest

# forward port dengan publish pada contoh ini porthost 8080 dan di dalam container di run pada port 80, 
# porthost harus sama dengan portcontainer, --publish bisa diganti dengan -p
docker container create --name contohnginx --publish 8080:80 nginx:latest

# jalankan container
docker container start contohnginx

# buka browser dan ketikkan localhost:8080
localhost:8080