require 'capybara/rspec'
require 'capybara/poltergeist'
require 'ym_test'

# set js driver
Capybara.javascript_driver = :poltergeist

# add ajax helpers
RSpec.configure do |config|
  config.include YmTest::AjaxHelpers
end
