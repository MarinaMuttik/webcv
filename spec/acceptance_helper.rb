require File.expand_path '../spec_helper.rb', __FILE__
require 'capybara'
require 'capybara/rspec'

Capybara.app = Sinatra::Application

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

RSpec.configure do |config|
  config.include Capybara
end

Capybara.default_driver = :rack_test
Capybara.server = :puma
Capybara.javascript_driver = :selenium
