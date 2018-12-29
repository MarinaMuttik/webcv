require 'sinatra/base'
require 'slim'

class Protected < Sinatra::Base

  use Rack::Auth::Basic, "Authentication" do |username, password|
    username == "marina" && password == "backg1"
  end

  get '/workhistory' do
    slim :'workhistory/index'
  end

  get '/academichistory' do
    slim :'academichistory/index'
  end

  get '/contact' do
    slim :'contact/index'
  end

end
