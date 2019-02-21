module Fear
  # @private
  module Utils
    class << self
      def assert_arg_or_block!(method_name, *args)
        unless block_given? ^ !args.empty?
          raise ArgumentError, "##{method_name} accepts either one argument or block"
        end
      end

      def assert_type!(value, *types)
        if types.none? { |type| value.is_a?(type) }
          raise TypeError, "expected `#{value.inspect}` to be of #{types.join(', ')} class"
        end
      end

      def return_or_call_proc(value)
        if value.respond_to?(:call)
          value.call
        else
          value
        end
      end
    end
  end
end
