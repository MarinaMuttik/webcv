require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require './config/environments'

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Message < ApplicationRecord
end
