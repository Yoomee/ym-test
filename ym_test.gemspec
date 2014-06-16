$:.push File.expand_path("../lib", __FILE__)

require "ym_test/version"

Gem::Specification.new do |s|
  s.name        = "ym_test"
  s.version     = YmTest::VERSION
  s.authors     = ["David Thompson"]
  s.email       = ["david@yoomee.com"]
  s.homepage    = "http://www.yoomee.com"
  s.summary     = "Test support for Yoomee projects"
  s.description = "Provides testing gems and helper methods"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.1"
  s.add_dependency "rspec-rails", "~> 2.0"
  s.add_dependency "factory_girl_rails"
  s.add_dependency "cucumber-rails"
  s.add_dependency "poltergeist"
  s.add_dependency "database_cleaner"
  s.add_dependency "shoulda-matchers"
  s.add_dependency "webmock"
  s.add_dependency "capybara-webkit"

  s.add_development_dependency "rspec"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "jquery-rails"
end
