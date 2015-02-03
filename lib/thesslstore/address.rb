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
  end
end
