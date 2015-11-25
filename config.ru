require 'sinatra/base'
require "sinatra/reloader"
require 'pry'
require 'logger'

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  set :bind, '0.0.0.0'
  get '/' do
    erb :index
  end
end

run App
