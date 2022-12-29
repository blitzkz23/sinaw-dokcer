# masuk ke dalam program bash dalam container, argumen -i digunakan untuk interaktif, argumen -t digunakan untuk alokasi pseudo tty (terminal access)
docker container exec -i -t namacontainer /bin/bash

# masuk ke root container docker
cd /

# masuk ke redis-cli
redis-cli