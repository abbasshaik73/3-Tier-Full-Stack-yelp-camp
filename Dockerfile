FROM node:19-alpine as flm
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

FROM flm as FINAL
RUN npm install --production
COPY . .
CMD npm start
