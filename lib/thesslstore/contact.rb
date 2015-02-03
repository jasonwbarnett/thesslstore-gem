require 'virtus'
require 'active_support/json'

module Thesslstore
  class Contact
    include Virtus.model

    attribute :FirstName, String
    attribute :LastName, String
    attribute :Phone, String
    attribute :Fax, String
    attribute :Email, String
    attribute :Title, String
    attribute :OrganizationName, String
    attribute :AddressLine1, String
    attribute :AddressLine2, String
    attribute :City, String
    attribute :Region, String
    attribute :PostalCode, String
    attribute :Country, String
  end
end
