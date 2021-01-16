FROM ruby:2.5
RUN apt-get update && apt-get install -y \
build-essential \
libpq-dev \
nodejs \
postgresql-client \
yarn
WORKDIR /product-registar
COPY Gemfile Gemfile.lock /product-registar/
RUN bundle install 
