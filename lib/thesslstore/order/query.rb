require 'virtus'
require 'active_support/json'
require 'thesslstore/auth_request'

module Thesslstore
  module Order
    class Query
      include Virtus.model

      attribute :AuthRequest, Thesslstore::AuthRequest, :default => Thesslstore::AuthRequest.new
      attribute :StartDate, String
      attribute :EndDate, String
      attribute :SubUserID, String
      attribute :ProductCode, String

      def as_json(opts = nil)
        hash = super
        hash.reject! { |k,v| v.nil?  }
      end
    end
  end
end
