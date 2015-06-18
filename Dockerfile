FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential
RUN apt-get install -y libpq-dev
RUN apt-get install -y nodejs


ENV APP_HOME /barebones
ENV TMP_DIR /tmp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

WORKDIR $TMP_DIR
ADD Gemfile $APP_HOME/Gemfile
ADD Gemfile.lock $APP_HOME/Gemfile.lock

RUN bundle install
ADD . $APP_HOME