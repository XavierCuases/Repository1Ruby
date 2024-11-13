
FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "ruby", "app.rb"]
