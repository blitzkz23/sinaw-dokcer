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
docker image inspect mznopal/expose # untuk lihat port yang di expose
docker container create --name expose -p 8080:8080 mznopal/expose 
docker container start expose
docker container logs expose
## Buka di browser http://localhost:8080 atau curl http://localhost:8080


# ENV Instruction
docker build -t mznopal/env env
docker image inspect mznopal/env # untuk lihat environment yang di set
docker container create --name env -p 8080:8080 mznopal/env

## Misal mau merubah environment variable yang ada pada image
docker container create --name env --env APP_PORT=8081 -p 8081:8081 mznopal/env

docker container start env
docker container logs env
## Buka di browser http://localhost:8080 atau curl http://localhost:8080