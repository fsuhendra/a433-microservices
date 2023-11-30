# Gunakan base image Node.js versi 14
FROM node:14

# Set Working directory untuk container ke /app
WORKDIR /app

# Salin seluruh source code ke working directory di container.
COPY . .

# Set aplikasi berjalan dalam production mode dan menggunakan container bernama item-dbsebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Instal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port aplikasi yang digunakan yaitu port 8080
EXPOSE 8080

# Jalankan server dengan perintah npm start
CMD [ "npm", "start" ]