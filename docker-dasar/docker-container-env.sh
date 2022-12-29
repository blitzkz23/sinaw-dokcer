# mencoba environtment variable pada container, untuk mongoDB
docker image pull mongo:latest

# buat container baru dengan nama contohmongo
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=naufal --env MONGO_INITDB_ROOT_PASSWORD=naufal mongo:latest

# jalankan container
docker container start contohmongo

# bisa coba connect ke mongoDB dengan menggunakan robomongo, dimana hostnya adalah localhost dan portnya adalah 27017, 
# dan auth menggunakan username dan password yang sudah di set di environtment variable
