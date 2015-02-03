require 'virtus'
require 'active_support/json'
require 'thesslstore/auth_request'

module Thesslstore
  module Order
    class Download
      include Virtus.model

      attribute :AuthRequest, Thesslstore::AuthRequest, :default => Thesslstore::AuthRequest.new
      attribute :CustomOrderID, String
      attribute :TheSSLStoreOrderID, String
      attribute :ResendEmailType, String
      attribute :ResendEmail, String
      attribute :RefundReason, String
      attribute :RefundRequestID, String
      attribute :ApproverMethod, String
      attribute :DomainNames, String
      attribute :SerialNumber, String

      def as_json(opts = nil)
        hash = super
        hash.reject! { |k,v| v.nil?  }
      end

    end
  end
end
