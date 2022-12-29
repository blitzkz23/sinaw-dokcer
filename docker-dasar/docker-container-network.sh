# buat network baru
docker network create --driver bridge mongonetwork

# buat container mongodb
docker container create --name mongodbnet --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=naufal --env MONGO_INITDB_ROOT_PASSWORD=naufal mongo:latest

# buat container mongoexpress
docker image pull mongo-express:latest
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_ADMINUSERNAME=naufal --env ME_CONFIG_MONGODB_ADMINPASSWORD=naufal --env ME_CONFIG_MONGODB_URL="mongodb://naufal:naufal@mongodbnet:27017/" mongo-express:latest

# jalankan container
docker container start mongodbnet mongodbexpress

# hapus container dari network
docker network disconnect mongonetwork mongodbnet