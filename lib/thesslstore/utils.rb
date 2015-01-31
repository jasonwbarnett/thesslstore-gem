require 'active_support/inflector'

module Thesslstore
class Utils
  class << self
    def to_underscore(hash)
      convert hash, :underscore
    end

    def to_camel_case(hash)
      convert hash, :camelize
    end

    def convert(obj, *method)
      case obj
      when Hash
        obj.inject({}) do |h,(k,v)|
          v = convert v, *method
          h[k.to_s.send(*method)] = v
          h
        end
      when Array
        obj.map {|m| convert m, *method }
      else
        obj
      end
    end
  end
end
end
