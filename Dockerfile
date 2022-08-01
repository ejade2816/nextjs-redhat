FROM node:alpine
WORKDIR /app
COPY ./ ./
RUN npm install && npm run build
EXPOSE 8080
ENV PORT 8080
WORKDIR /app/.next/standalone
CMD ["node", "server.js",] 