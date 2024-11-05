FROM ruby:3.0.4-alpine

RUN apk update && apk add --no-cache build-base openssl-dev zlib-dev

COPY Gemfile* ./

RUN bundle install

COPY . .

CMD ["bundle", "exec", "ruby", "/open_pull_request.rb"]
