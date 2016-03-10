require "structifier/version"

module Structifier
  class Base
    def initialize(klass)
      @klass = klass
    end

    def method_missing(method_name, *args)
      if @klass.respond_to?(method_name) && @klass.method(method_name).call.is_a?(Hash)
        unless self.respond_to?(method_name)
          define_singleton_method(method_name) do
            instance_variable_get("@#{method_name}") || instance_variable_set("@#{method_name}", OpenStruct.new(@klass.method(method_name).call)) 
          end
        end
        method(method_name).call
      else
        super
      end
    end

  end
end
