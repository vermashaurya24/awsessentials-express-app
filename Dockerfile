# Use the official Node.js image as a parent image
FROM node:22

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and yarn.lock into the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the current directory contents into the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["node", "index.js"]

