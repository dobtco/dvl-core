module Fortitude
  module Rails
    class YieldedObjectOutputter
      def method_missing(method_name, *args, &block)
        if @method_names_hash[method_name.to_sym]
          # https://github.com/ageweke/fortitude/issues/24
          if block && block.arity > 0
            block = ::Fortitude::Rails::YieldedObjectOutputter.wrap_block_as_needed(@output_target, method_name, block, @method_names_hash.keys)
          end

          return_value = @yielded_object.send(method_name, *args, &block)
          @output_target.rawtext(return_value)
          EMPTY_RETURN_VALUE
        else
          @yielded_object.send(method_name, *args, &block)
        end
      end
    end
  end
end
