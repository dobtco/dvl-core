ENV["RAILS_ENV"] = "test"
require File.expand_path("../dummy/config/environment.rb",  __FILE__)

Rails.backtrace_cleaner.remove_silencers!

require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'rspec-html-matchers'
require 'rspec/page-regression'
require 'active_support/all'
require 'dvl/core'
require 'simple_form'

if ENV['RUN_ACCESSIBILITY_TESTS']
  require 'capybara/accessible'
  Capybara.default_driver = :accessible_poltergeist
  Capybara.javascript_driver = :accessible_poltergeist
else
  Capybara.javascript_driver = :poltergeist
end
