require 'sinatra/base'
require 'slim'

class Public < Sinatra::Base
  get '/' do
    slim :index
  end

  get '/personaldevelopment' do
    slim :'personaldevelopment/index'
  end
end
