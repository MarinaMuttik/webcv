require File.expand_path '../spec_helper.rb', __FILE__
require 'capybara'
require 'capybara/rspec'


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.app = Public
  config.javascript_driver = :selenium
  config.default_driver = :rack_test
  config.server = :puma
end

RSpec.configure do |config|
  config.include Capybara
end
