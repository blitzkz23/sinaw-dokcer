# Membuat container dari docker compose
docker compose create

# Memulai container dari docker compose
docker compose start

# Melihat container yang terdapat pada docker compose
docker compose ps

# Menghentikan container yang terdapat pada docker compose
docker compose stop

# Menghapus container yang terdapat pada docker compose
docker compose down

# Menampilkan semua projek yang sedang berjalan
docker compose ls

# Menghapus volume dari dockre compose (kalo pake down, volume tidak dihapus)
docker volume rm namavolume / docker volume prune

# Monitor docker event
docker events --filter 'container=nama'

# Cek status container
docker container stats

# Membuild image pada docker compose
docker compose build

# Menjalankan mode prod pada extend service (konfig umum lalu konfig prod)
docker compose -f docker-compose.yaml -f prod.yaml create
docker compose -f docker-compose.yaml -f prod.yaml start