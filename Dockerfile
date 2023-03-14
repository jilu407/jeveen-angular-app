FROM node
RUN mkdir /app
COPY . /app/
RUN npm install
CMD "npm start"
EXPOSE 4200