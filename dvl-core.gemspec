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
  s.add_dependency 'erector-rails4'
  s.add_dependency 'sass'

  s.add_development_dependency 'capybara', '2.4.2'
  s.add_development_dependency 'poltergeist', '1.5.1'
  s.add_development_dependency 'rerun', '0.10.0'
  s.add_development_dependency 'rspec', '3.1.0'
  s.add_development_dependency 'sinatra', '1.4.5'
  s.add_development_dependency 'sinatra-assetpack', '0.3.3'
end
