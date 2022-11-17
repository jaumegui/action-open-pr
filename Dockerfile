FROM ruby:3.0.4-alpine

COPY Gemfile* ./

RUN bundle install

COPY . .

CMD ["bundle", "exec", "ruby", "/open_pull_request.rb"]
