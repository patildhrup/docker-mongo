FROM node:20-alpine

ENV NODE_ENV=production

WORKDIR /testapp

# 🔥 IMPORTANT: copy package files first
COPY package*.json ./

# 🔥 clear npm cache & install
RUN npm cache clean --force && npm install

# copy rest of the app (after install)
COPY . .

CMD ["node", "server.js"]
