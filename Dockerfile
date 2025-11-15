FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN ci --omit=dev
CMD [ "Node","src /index.html" ]