require 'bundler'
Bundler.require

require './config/environment.rb'

class ApplicationController < Sinatra::Base


  configure do
    set :public_folder, 'public'
    set :views, 'app/views'

    enable :sessions
    set :session_secret, 'meowspace'
  end

  get '/' do
    erb :index
  end

  post '/sign-up' do
    @cat = Cat.new
    @cat.name = params[:name]
    @cat.save

    if @cat
      session[:user_id] = @cat
    end

    erb :index
  end

  post '/login' do
    @cat = Cat.find(params[:id].to_i)

    if @cat
      session[:user_id] = @cat
    end

    erb :index
  end

  post '/logout' do 
    session[:user_id] = nil

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