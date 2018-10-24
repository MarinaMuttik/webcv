require 'sinatra/base'
require 'slim'

class Public < Sinatra::Base
  get '/' do
    slim :index
  end
end
