require 'sinatra/base'
require 'slim'


class Public < Sinatra::Base
get '/' do
  slim :index
end
end

class Protected < Sinatra::Base

  use Rack::Auth::Basic, "Please enter login details" do |username, password|
    username == "marina" && password == "workhis1"
  end

get '/workhistory' do
  slim :'workhistory/index'
end

end
