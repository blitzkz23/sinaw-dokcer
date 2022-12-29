# lihat semua container
docker container ls -a

# lihat container yang sedang berjalan
docker container ls

# membuat container dari sebuah image, namacontainer adalah nama container yang akan dibuat, namaimage:tag adalah nama image dan tag yang akan digunakan
docker container create --name namacontainer namaimage:tag

# menjalankan container
docker container start namacontainer

# menghentikan container
docker container stop namacontainer

# menghapus container, hanya bisa menghapus container yang berhenti
docker container rm namacontainer