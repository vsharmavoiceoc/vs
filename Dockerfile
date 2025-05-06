# Use an official Node.js runtime as a base image
FROM node:18

# Set working directory inside container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Your app will run on port 3000 (change if needed)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]