FROM ubuntu:latest

RUN mkdir /app
WORKDIR /app
COPY . /app
RUN apt update -y
RUN apt install ruby -y
RUN gem install sinatra 
RUN gem install webrick
EXPOSE 9292/tcp
CMD rackup -o 0.0.0.0