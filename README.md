# YmTest

This gem provides a shortcut to import the gems we use at Yoomee for testing.

It also provides some helper methods.

## Installation

This is currently installed directly from the Yoomee Gitlab.

Include the following in your Gemfile:

```
group :test do
  gem 'ym_test', :git => 'git@gitlab.yoomee.com:yoomee/ym_test.git'
end
```

It brings in the following Gems to your project:

 * rspec-rails
 * factory_girl_rails
 * cucumber-rails
 * poltergeist
 * database_cleaner
 * shoulda-matchers
 * webmock
 * capybara-webkit

## Usage

### Cucumber

In your ````features/support/env.rb``` file add:

```
require 'ym_test/cucumber'
```

This sets up:

* Poltergeist
* Factory Girl
* YmTest helper methods

### rspec

In your ````spec/spec_helper.rb``` file add:

```
require 'ym_test/rspec'
```

This sets up:

* Poltergeist
* YmTest helper methods

### YmTest Helpers

Marked as available in Cucumber/rspec as appropriate

##### Factory Girl (Cucumber)

You can use Factory Girl easily.

You can do ```create(:factory_name)``` rather then ```FactoryGirl.create(:factory_name)```


##### @email (Cucumber)

This sets up ActionMailer for use in your tests.

**Example:**

```
  @email
  Scenario: Sending a message to the site owners
    Given there is a contact page
    And there is a thanks page
    When I go to the contact page
    And I submit the contact form
    Then I should see the thank you page
    And it should send a "new message from the contact page" email
```

You can then check the following in your steps:

```
Then(/^it should send an? "(.*?)" email$/) do |subject|
  @email = ActionMailer::Base.deliveries.first
  @email.to.should include Settings.site_email
  @email.subject.should include(subject)
end
```
#### wait_for_ajax (Cucumber and rspec)

Use ```wait_for_ajax``` when you want to ensure that all ajax requests have
completed in your ```@javascript``` tests before moving onto the next step

**Cucumber example:**

```
When(/^I press the 'Show more' link$/) do
  click_link 'Show more'
  wait_for_ajax
end
```

## Licence

This project rocks and uses MIT-LICENSE.
