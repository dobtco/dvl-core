source 'https://rubygems.org'
gemspec

gem 'dvl-icons', git: if ENV['GITHUB_OAUTH_TOKEN']
                        "https://#{ENV['GITHUB_OAUTH_TOKEN'] }:x-oauth-basic@github.com/dobtco/dvl-icons.git"
                      else
                        'git@github.com:dobtco/dvl-icons.git'
                      end
