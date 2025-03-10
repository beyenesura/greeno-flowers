# Start your image with a node base image
FROM node:18

# The /app directory should act as the main application directory
COPY . /app

# Copy the app package and package-lock.json file
WORKDIR /app

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install

EXPOSE 3000

# Start the app using serve command
CMD [ "npm", "start" ]