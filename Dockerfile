FROM node:10.16.0

WORKDIR /app

RUN npm cache clean --force

RUN rm -rf node_modules package-lock.json

COPY package.json package-lock.json ./
COPY . .
RUN npm install

EXPOSE 3002
ENV PORT 3002

CMD ["npm", "run", "dev"]