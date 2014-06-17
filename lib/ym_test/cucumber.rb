require 'capybara/poltergeist'
require 'factory_girl_rails'
require 'ym_test'

# set javascript driver
Capybara.javascript_driver = :poltergeist

# email
Around('@email') do |scenario, block|
  ActionMailer::Base.delivery_method = :test
  ActionMailer::Base.perform_deliveries = true
  ActionMailer::Base.deliveries.clear
  block.call
end

# make factory girl methods available
World(FactoryGirl::Syntax::Methods)
