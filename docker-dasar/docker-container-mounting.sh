# coba mount folder dari host ke container, contoh command:
# docker container create --name namacontainer --mount "type=bind,source=folder,destination=folder, readonly" namaimage:tag

# contoh usecase: agar data yg dimasukkan ke mongodb tidak hilang ketika container dihapus, maka kita bisa mount folder dari host ke container.  
# tempat image mongo menyimpan data diberi tahu pada dokumentasi, yaitu /data/db.
docker container create --name mongodata --mount "type=bind,source=/home/mznopal/Dev/data-engineering/sinaw-dokcer/docker-dasar/mongo-data,destination=/data/db" --publish 27018:27017 --env MONGO_INITDB_ROOT_USERNAME=naufal --env MONGO_INITDB_ROOT_PASSWORD=naufal mongo:latest

# setelah container didelete nantinya data masih ada