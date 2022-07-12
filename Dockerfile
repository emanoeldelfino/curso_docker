FROM node

WORKDIR /usr/src/app 

# . -> /usr/src/app
COPY package.json .

RUN npm install

# Copia o que tem no diretório atual para o WORKDIR
# basicamente o index.js
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
