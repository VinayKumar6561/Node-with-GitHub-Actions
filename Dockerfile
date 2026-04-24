# Use Node.js LTS version
FROM node:20-slim

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy app source code
COPY . .

# Expose port
EXPOSE 3000

# Use non-root user
USER node

# Start the application
CMD ["npm", "start"]
