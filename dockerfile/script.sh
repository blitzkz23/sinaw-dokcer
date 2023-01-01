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

