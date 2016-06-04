$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'dvl/core/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = 'dvl-core'
  s.version = Dvl::Core::VERSION
  s.required_ruby_version = Gem::Requirement.new('>= 2.0.0')
  s.authors = ['Adam Becker']
  s.summary = 'Base styles for the DOBT View Layer.'
  s.email = 'adam@dobt.co'
  s.license = 'MIT'
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {features,spec}/*`.split("\n")
  s.homepage = 'http://github.com/dobtco/dvl-core'

  s.add_dependency 'activesupport'
  s.add_dependency 'coffee-script'
  s.add_dependency 'sass'

  s.add_development_dependency 'autoprefixer-rails', '6.3.6.1'
  s.add_development_dependency 'capybara', '2.7.1'
  s.add_development_dependency 'capybara-webkit', '1.11.1'
  s.add_development_dependency 'fortitude', '0.9.5'
  s.add_development_dependency 'percy-capybara', '2.1.0'
  s.add_development_dependency 'rails', '4.2.6'
  s.add_development_dependency 'rspec-rails', '3.4.2'
  s.add_development_dependency 'simple_form', '3.2.1'
  s.add_development_dependency 'thin', '1.6.4'
end
