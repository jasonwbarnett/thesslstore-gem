require 'virtus'

module Thesslstore
  class Address
    include Virtus.model

    attribute :address_line1, String
    attribute :address_line2, String
    attribute :address_line3, String
    attribute :city, String
    attribute :region, String
    attribute :postal_code, String
    attribute :country, String
    attribute :phone, String
    attribute :fax, String
    attribute :locality_name, String
  end
end
