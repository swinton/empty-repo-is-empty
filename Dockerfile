# Use a base Node.js image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app files (optional, depending on use)
COPY . .

# Default command (optional; change based on your app)
CMD ["node"]
