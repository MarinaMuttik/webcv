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

  post '/contact/submit' do
    @message = Message.new(params[:message])
  	if @message.save
  		slim :'contact/success'
  	else
      slim :'contact/fail'
  	end
  end

end
