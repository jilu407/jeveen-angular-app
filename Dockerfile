FROM node:16.16.0 AS build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build --prod
RUN ls /app/dist/
#FROM nginx
#COPY --from=build  /app/dist/jeevan-app/ /usr/share/nginx/html/
