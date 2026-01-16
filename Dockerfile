# Utiliser l'image officielle Node.js 18
FROM node:18

# Définir le dossier de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste du code
COPY . .

# Exposer le port sur lequel l'application va tourner
EXPOSE 3000

# Commande pour démarrer l'application avec npm start (qui utilise babel-node)
CMD ["npm", "start"]

