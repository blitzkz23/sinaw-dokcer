# Dockerfile Module Instruction

# FROM Instruction (docker image build -tag namadockerhub/namaimage:tag lokasifolder)
docker build -t mznopal/from from
docker image ls

# RUN Instruction 
docker build -t mznopal/run run
## Untuk run yang lebih detail pada log
docker build -t mznopal/run run --progress=plain --no-cache

# COMMAND Instruction
docker build -t mznopal/command command
docker image inspect mznopal/command # untuk lihat bash command yang dijalankan
## Buat container dari image command
docker container create --name command mznopal/command
docker container start command
docker container logs command

# LABEL Instruction
docker build -t mznopal/label label
docker image inspect mznopal/label # untuk lihat label yang ada pada log image

# ADD Instruction
docker build -t mznopal/add add
docker container create --name add mznopal/add
docker container start add
docker container logs add

# COPY Instruction
docker build -t mznopal/copy copy
docker container create --name copy mznopal/copy
docker container start copy
docker container logs copy

# .dockerignore Sample
docker build -t mznopal/ignore ignore
docker container create --name ignore mznopal/ignore
docker container start ignore
docker container logs ignore

# EXPOSE Instruction
docker build -t mznopal/expose expose
docker image inspect mznopal/expose # untuk lihat port yang diexpose
docker container create --name expose -p 8080:8080 mznopal/expose 
docker container start expose
docker container logs expose
## Buka di browser http://localhost:8080 atau curl http://localhost:8080


# ENV Instruction
docker build -t mznopal/env env
docker image inspect mznopal/env # untuk lihat environment yang diset
docker container create --name env -p 8080:8080 mznopal/env

## Misal mau merubah environment variable yang ada pada image
docker container create --name env --env APP_PORT=8081 -p 8081:8081 mznopal/env

docker container start env
docker container logs env
## Buka di browser http://localhost:8080 atau curl http://localhost:8080

# VOLUME Instruction
docker build -t mznopal/volume volume
docker image inspect mznopal/volume # untuk lihat volume yang diset
docker container create --name volume -p 8080:8080 mznopal/volume
docker container start volume
docker container logs volume
## Buka di browser http://localhost:8080 atau curl http://localhost:8080
## Tulis url baru, misal localhost:8080/apa, data akan tersimpan di volume
docker container inspect volume # untuk lihat lokasi volume pada bagian Mounts
docker volume ls

# WORKDIR Instruction
docker build -t mznopal/workdir workdir
docker container create --name workdir -p 8080:8080 mznopal/workdir
docker container start workdir
docker container exec -it workdir /bin/sh # untuk masuk ke bash container
pwd # untuk lihat lokasi kerja
ls -l # untuk lihat file yang ada

# USER Instruction
docker build -t mznopal/user user
docker container create --name user -p 8080:8080 mznopal/user
docker container start user
docker container exec -it user /bin/sh # untuk masuk ke bash container
whoami # untuk lihat user yang sedang aktif

# ARG Instruction
docker build -t mznopal/arg arg --build-arg appname=pzn
docker container create --name arg -p 8080:8080 mznopal/arg
docker container start arg
docker container logs arg # akan ada error karena argumen hanya bisa diakses waktu build, sedangkan kita menggunaka argumen di cmd
docker container exec -it arg /bin/sh # untuk masuk ke bash container
ls -l # untuk lihat file yang ada

# HEALTHCHECK Instruction
docker build -t mznopal/healthcheck healthcheck
docker container create --name healthcheck -p 8080:8080 mznopal/healthcheck
docker container start healthcheck
docker container ls
docker container inspect healthcheck # untuk lihat healthcheck yang ada

# ENTRYPOINT Instruction
docker build -t mznopal/entrypoint entrypoint
docker container create --name entrypoint -p 8080:8080 mznopal/entrypoint
docker container start entrypoint
docker image inspect mznopal/entrypoint # untuk lihat entrypoint yang ada


# Multi Stage Build
docker image ls | grep mznopal # untuk lihat komparasi ukuran image
docker build -t mznopal/multi multi
docker container create --name multi -p 8080:8080 mznopal/multi
docker container start multi
docker container ls

# DockerHub
docker login -u mznopal
docker push mznopal/multi # untuk push image ke dockerhub