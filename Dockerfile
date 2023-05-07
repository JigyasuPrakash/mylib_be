FROM ruby:3.1.4

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /mylib_be
WORKDIR /mylib_be

ADD Gemfile /mylib_be/Gemfile
ADD Gemfile.lock /mylib_be/Gemfile.lock

RUN bundle install
RUN rails db:migrate

ADD . /mylib_be