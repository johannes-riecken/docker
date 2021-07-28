FROM ruby:3-slim-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y nodejs yarn && gem install rails
RUN useradd jo
USER jo
ENV HOME=/tmp
WORKDIR /tmp
# RUN rails new weblog
