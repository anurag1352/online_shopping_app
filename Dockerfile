# Getting base image for Node JS.
FROM node:18

# making a working directory for putting the code and req. files
WORKDIR /app

# Copy everything from the host to destination
COPY . .

# Install Packages
RUN npm install

# port Expose
EXPOSE 5171

# Serve The application
CMD ["npm", "run", "dev"]
