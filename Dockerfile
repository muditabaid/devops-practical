FROM ubuntu
RUN git clone git://github.com/swimlane/devops-practical.git

FROM node:16-alpine
ARG PROJECT_DIR="devops-practical"
ENV MONGODB_URL="mongodb://localhost:27017/database"

WORKDIR $PROJECT_DIR
# Copy and download dependencies
COPY package*.json ./
RUN npm install

# Copy the source files into the image
COPY . .
EXPOSE 3000
CMD npm start
