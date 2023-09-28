#!/usr/bin/env ruby

require 'sinatra'
require 'sqlite3'

set :port, 8080
set :bind, '0.0.0.0'

# Set up a database connection
db = SQLite3::Database.new 'test.db'

# Creating a hypothetical users table for demonstration purposes
db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255)
  );
SQL

get '/' do
  s = Time.new.to_f
  while(Time.new.to_f - s < 0.2)
    true
  end
  "BASIC SLOW STUFF"
end

get '/healthcheck' do
  'OK'
end

get '/login' do
  username = params['username']
  password = params['password']
  
  results = db.execute("SELECT * FROM users WHERE username = '#{username}' AND password = '#{password}'")
  
  if results.empty?
    'Invalid login!'
  else
    'Logged in!'
  end
end

