FROM rails:4.2.4
MAINTAINER Alex B <me@alexb.io>

WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock

RUN bundle install -j4 --system

COPY . /usr/src/app/

RUN bundle exec rake assets:precompile

EXPOSE 8080

CMD ["bundle", "exec", "passenger", "start"]
