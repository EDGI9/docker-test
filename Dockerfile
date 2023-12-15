FROM node:20-alpine3.18

WORKDIR /app

COPY public /app/public/
COPY src /app/src/
COPY .gitignore /app/
COPY index.html /app/
COPY package.json /app/
COPY package-lock.json /app/
COPY README.md /app/
COPY vite.config.js /app/

RUN npm install

EXPOSE 5173

CMD [ "npm", "run", "dev" ]