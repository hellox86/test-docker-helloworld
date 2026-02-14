FROM ubuntu:latest AS build 
RUN apt update && apt-get install build-essential -y
RUN apt install cmake -y
WORKDIR /app
COPY . /app
RUN mkdir out && cd out/ && cmake .. && make
COPY hello_world /app
CMD ["/hello_world"]