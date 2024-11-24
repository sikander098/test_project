# Step 1: Use Node.js official image as base
FROM node:18

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json to the container
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the entire project to the container
COPY . .

# Step 6: Expose the application port
EXPOSE 5000

# Step 7: Start the application
CMD ["node", "index.js"]
