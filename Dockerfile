FROM node:alpine
WORKDIR /app
ENV PORT=80
COPY package.json ./
COPY package-lock.json ./
COPY ./ ./
RUN npm install
EXPOSE 80
CMD ["npm", "run", "start"]