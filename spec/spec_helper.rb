ENV["RAILS_ENV"] = "test"
require File.expand_path("../dummy/config/environment.rb",  __FILE__)

Rails.backtrace_cleaner.remove_silencers!

require 'rspec/rails'
require 'capybara/rspec'
require 'capybara-webkit'
require 'active_support/all'
require 'dvl/core'
require 'simple_form'
require 'simple_form_legend'
require 'percy/capybara'
require 'percy/capybara/rspec'

if ENV['RUN_ACCESSIBILITY_TESTS']
  require 'capybara/accessible'
  Capybara.default_driver = :accessible_webkit
  Capybara.javascript_driver = :accessible_webkit
else
  Capybara.javascript_driver = :webkit
end

Capybara::Webkit.configure do |config|
  config.allow_unknown_urls
end
