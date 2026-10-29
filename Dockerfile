FROM node:22-slim
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY backend ./backend
EXPOSE 5000
CMD ["node", "backend/index.js"]