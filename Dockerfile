# Use the official Node.js image as the base image
FROM node:18-alpine 

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if you have one)
COPY package*.json ./

# Install production dependencies
RUN npm ci --only=production

# Copy the rest of your application code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Define the command to start your app
CMD ["npm", "start"] 