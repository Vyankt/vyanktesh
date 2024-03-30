version: '3'
services:
  web:
    # will build ./docker/web/Dockerfile
    build: ./docker/web
    ports:
     - "5000:5000"
    volumes:
     - .:/code
  db:
    # will build ./docker/db/Dockerfile
    build: ./docker/db
    ports:
      - "3306:3306"
  redis:
    # will use docker hub's redis prebuilt image from here:
    # https://hub.docker.com/_/redis/
    image: "redis:alpine"

    docker-compose up -d