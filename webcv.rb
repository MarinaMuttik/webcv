require 'sinatra'
require 'sinatra/base'
require 'slim'

get '/' do
  slim :index
end

get '/workhistory' do
  slim :'workhistory/index'
end
