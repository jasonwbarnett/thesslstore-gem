require 'virtus'
require 'active_support/json'

module Thesslstore
  class Address
    include Virtus.model

    attribute :AddressLine1, String
    attribute :AddressLine2, String
    attribute :AddressLine3, String
    attribute :City, String
    attribute :Region, String
    attribute :PostalCode, String
    attribute :Country, String
    attribute :Phone, String
    attribute :Fax, String
    attribute :LocalityName, String

    def as_json(opts = nil)
      hash = super
      hash.reject! { |k,v| v.nil?  }
    end

  end
end
