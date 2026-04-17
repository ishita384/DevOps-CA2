# 1. Base image (Node.js installed)
FROM node:18

# 2. Create working directory inside container
WORKDIR /app

# 3. Copy package files first
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Copy all project files
COPY . .

# 6. Expose port
EXPOSE 3000

# 7. Start the app
CMD ["npm", "start"]
