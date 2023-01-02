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
