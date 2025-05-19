FROM node:12.16.2

# Crear directorio de la app
WORKDIR /app

# Copiar package.json y demás
COPY package*.json ./
COPY client ./client
COPY server ./server

# Instalar dependencias globales necesarias
RUN npm install -g parcel-bundler concurrently

# Instalar dependencias de la raíz, servidor y cliente
RUN npm install
RUN npm install --prefix server
RUN npm install --prefix client

# Exponer puertos necesarios
EXPOSE 3000
EXPOSE 4100

# Ejecutar app (servidor y cliente al mismo tiempo)
CMD ["npm", "start"]
