# Use Node.js 18
FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm ci --omit=dev

COPY dist ./dist

CMD ["node", "dist/index.js"]

