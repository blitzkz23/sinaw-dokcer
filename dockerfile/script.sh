# FROM Instruction (docker image build -tag namadockerhub/namaimage:tag lokasifolder)
docker build -t mznopal/from from
docker image ls

# RUN Instruction 
docker build -t mznopal/run run
## Untuk run yang lebih detail
docker build -t mznopal/run run --progress=plain --no-cache