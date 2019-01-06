require 'sinatra/base'
require 'slim'

class Public < Sinatra::Base
  get '/' do
    slim :index
  end

  get '/personaldevelopment' do
    slim :'personaldevelopment/index'
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
