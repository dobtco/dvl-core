source 'https://rubygems.org'
gemspec

# Heroku...
group :production do
  gem 'autoprefixer-rails'
  gem 'fortitude', github: 'ajb/fortitude'
  gem 'rails'
  gem 'simple_form'
  gem 'thin'
  gem 'dvl-icons', git: if ENV['GITHUB_OAUTH_TOKEN']
                        "https://#{ENV['GITHUB_OAUTH_TOKEN'] }:x-oauth-basic@github.com/dobtco/dvl-icons.git"
                      else
                        'git@github.com:dobtco/dvl-icons.git'
                      end
end
