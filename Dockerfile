# Construire l'image
docker build -t examen-nodejs .

# Lancer le conteneur et exposer le port
docker run -p 3000:3000 examen-nodejs
