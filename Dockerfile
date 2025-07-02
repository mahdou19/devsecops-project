# Étape de build
FROM node:18-alpine

# Créer un dossier de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste de l'application
COPY . .

# Exposer le port
EXPOSE 3000

# Commande de lancement
CMD ["node", "index.js"]
