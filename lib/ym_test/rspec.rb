require 'factory_girl_rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'ym_test'

Capybara.javascript_driver = :poltergeist

RSpec.configure do |config|
  config.include YmTest::AjaxHelpers
  config.include FactoryGirl::Syntax::Methods
end
