FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /barebones
WORKDIR /barebones
ADD Gemfile /barebones/Gemfile
RUN bundle install
ADD . /barebones