ENV["RAILS_ENV"] = "test"
require File.expand_path("../dummy/config/environment.rb",  __FILE__)

Rails.backtrace_cleaner.remove_silencers!

require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'active_support/all'
require 'dvl/core'
require 'simple_form'
require 'simple_form_legend'
require 'percy/capybara'

Capybara.javascript_driver = :poltergeist

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, { js_errors: false })
end

RSpec.configure do |config|
  config.before(:suite) { Percy::Capybara.initialize_build }
  config.after(:suite) { Percy::Capybara.finalize_build }
end
