#Create working directory for node
FROM node:latest
RUN mkdir -p /app/data/database && mkdir -p /app/data/data-fetch
WORKDIR /app

#Add libraries
COPY package*.json ./
RUN npm install

#Add project files
COPY app.js /app/
COPY .env /app/
COPY data/database/database.js /app/data/database/
COPY data/data-fetch/data-fetch.js /app/data/data-fetch/

#Expose port 8082
EXPOSE 8082

#Execute node project
CMD [ "node", "app.js" ]
