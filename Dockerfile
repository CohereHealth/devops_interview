FROM ruby:2.7-alpine
RUN gem install --no-document sinatra
run gem install --no-document sqlite3
RUN mkdir /app
COPY handler.rb /app/
ENTRYPOINT ruby /app/handler.rb

