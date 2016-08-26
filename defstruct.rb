module DefStruct
  def self.new(&defaults_block)
    defaults = defaults_block.call
    klass = Struct.new(*defaults.keys) do
      def initialize(attrs={})
        defaults = self.class.const_get(:DEFAULTS_BLOCK).call
        defaults.merge!(attrs).each do |k, v|
          self[k] = v
        end
      end

      def self.reopen(&block)
        self.class_exec(&block)
        self
      end
    end

    klass.const_set(:DEFAULTS_BLOCK, defaults_block)
    klass
  end
end

