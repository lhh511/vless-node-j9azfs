FROM node:22-slim
RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY package.json ./
COPY config.json ./
COPY server.js ./
CMD ["npm", "start"]
