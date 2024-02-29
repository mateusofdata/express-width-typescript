# Use the official Node.js image
FROM node:20.11.0-slim

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install 
# Copy application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the server using the start command defined in your package.json
CMD [ "npm", "start" ]
