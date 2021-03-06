require File.expand_path('../boot', __FILE__)

require "rails"

%w(
  action_controller
  action_view
  action_mailer
  active_job
  rails/test_unit
  sprockets
).each do |framework|
  begin
    require "#{framework}/railtie"
  rescue LoadError
  end
end

Bundler.require(*Rails.groups)

require 'simple_form'
require 'simple_form_legend'
require 'autoprefixer-rails'
require 'sass'
require 'rails-assets-autosize'

module Dummy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.precompile += %w(
      splash.css
    )

    config.x.pages = {
      'Base Styles' => '/',
      'Color' => '/color',
      'Layout' => '/layout',
      'Data' => '/data',
      'Forms' => '/forms',
      'Headers' => '/headers',
      'Navigation' => '/navigation',
      'Components' => '/components',
      'Splash Pages' => '/splash'
    }

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.secret_key_base = 'xxx'

    # Autoload /lib classes
    config.autoload_paths += %W(#{config.root}/lib)
  end
end
