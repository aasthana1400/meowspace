require 'bundler'
Bundler.require

require './app/models/cat'
require './app/models/meow'


configure :development do
  set :database, "sqlite3:db/database.db"
end
