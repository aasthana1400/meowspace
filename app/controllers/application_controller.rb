require 'bundler'
Bundler.require

require './config/environment.rb'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  post '/sign-up' do
    @cat = Cat.new
    @cat.name = params[:name]
    @cat.save

    erb :index
  end


  post '/meow' do
    @meow = Meow.new
    @meow.message = params[:message]
    @meow.cat_id = params[:cat]
    @meow.save

    erb :index
  end

  get '/user' do
    erb :user
  end


end