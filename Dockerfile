FROM node:16-alpine
RUN apk upgrade
RUN apk add git
RUN git clone https://github.com/muditabaid/devops-practical.git
#COPY . /workspace
#RUN pwd ; ls -al ; ls -al /workspace

WORKDIR /devops-practical
#ARG PROJECT_DIR="devops-practical"
ENV MONGODB_URL="mongodb://mongodb:27017/database"

#WORKDIR $PROJECT_DIR
# Copy and download dependencies
RUN pwd; ls -al
# COPY package*.json ./
RUN npm install
RUN cp .env.example .env
# Copy the source files into the image
#COPY . .
EXPOSE 3000
CMD ["npm", "start"]
