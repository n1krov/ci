# Imagen base oficial de Node
FROM node:20

# Crear el directorio de la app
WORKDIR /app

# Copiar archivos del package.json y lock
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código fuente
COPY . .

# Exponer el puerto (cambiá si tu app usa otro)
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]

