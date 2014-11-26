require 'dvl/core/version'

module Dvl
  module Core
    if defined?(Rails)
      class Engine < ::Rails::Engine
      end
    end
  end

  module Components
  end
end

require 'dvl/components/footer'
require 'dvl/components/flashes'
require 'dvl/components/modal'
