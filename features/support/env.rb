# Generated by cucumber-sinatra. (2015-04-02 15:23:08 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Test

class TestWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  TestWorld.new
end
