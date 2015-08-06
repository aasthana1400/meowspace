require 'bundler'
Bundler.require

require './config/environment.rb'
# require './app/models/cat.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

end