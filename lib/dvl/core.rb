require 'dvl/core/version'

if defined?(Rails)
  module Dvl
    module Core
      class Engine < ::Rails::Engine
        # nada
      end
    end
  end
end

module Dvl
  module Core
    module Components
    end
  end
end

require 'dvl/core/components/footer'
require 'dvl/core/components/flashes'
