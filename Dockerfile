FROM node:lts-alpine

# Installer les dépendances système nécessaires
RUN apk add --no-cache bash

# Ajouter le code source dans le conteneur
ADD . /app/
WORKDIR /app

# Installer les dépendances du projet
RUN yarn install

# Exposer le port sur lequel l'application s'exécutera
EXPOSE 3000

# Démarrer l'application
CMD ["yarn", "dev"]
