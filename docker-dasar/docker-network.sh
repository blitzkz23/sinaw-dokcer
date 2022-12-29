# melihat network yang ada
docker network ls

# membuat network baru, jika tidak dispecify maka akan menggunakan driver bridge
docker network create --driver namadriver namanetwork

# hapus network, hanya bisa dilakukan jika tidak ada container yang terhubung ke network
docker network rm namanetwork
