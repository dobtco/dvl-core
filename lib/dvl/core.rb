require 'dvl/core/version'

begin
  require 'fortitude'
rescue LoadError
end

module Dvl
  module Core
    if defined?(Rails)
      class Engine < ::Rails::Engine

        if defined?(Fortitude)
          initializer 'dvl_core.load_views' do |app|
            require 'dvl/core/views/base'
            require 'dvl/core/views/flashes'
            require 'dvl/core/views/footer'
            require 'dvl/core/views/modal'
          end
        end
      end
    end

    if defined?(Fortitude)
      module Views
        mattr_accessor :base_view_class
        self.base_view_class = 'Dvl::Core::Views::Base'
      end
    end
  end
end
