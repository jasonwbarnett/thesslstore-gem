require 'virtus'

require 'active_support/json/encoding'
require 'thesslstore/utils'

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

    def as_json(options = nil)
      camelized_json = Thesslstore::Utils.to_camel_case(attributes)
    end

  end
end
