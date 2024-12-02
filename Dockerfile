# Use an official base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy application code
COPY . .

# Build the application (if needed)
RUN npm run build

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "dist/main.js"]