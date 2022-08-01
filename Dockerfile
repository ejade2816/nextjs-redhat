FROM node:alpine
WORKDIR /app
COPY ./ ./
RUN npm install && npm run build
EXPOSE 8080
CMD ["npm", "run", "start"]