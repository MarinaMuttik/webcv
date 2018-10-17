require 'sinatra/base'
require 'slim'

class Public < Sinatra::Base
get '/' do
  slim :index
end
end

class Protected < Sinatra::Base

  use Rack::Auth::Basic, "Authentication" do |username, password|
    username == "marina" && password == "workhis1"
  end

get '' do
  slim :'workhistory/index'
end

end
