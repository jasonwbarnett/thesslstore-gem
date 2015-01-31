require 'virtus'

require 'active_support/json/encoding'
require 'thesslstore/utils'

module Thesslstore
  class Contact
    include Virtus.model

    attribute :first_name, String
    attribute :last_name, String
    attribute :phone, String
    attribute :fax, String
    attribute :email, String
    attribute :title, String
    attribute :organization_name, String
    attribute :address_line1, String
    attribute :address_line2, String
    attribute :city, String
    attribute :region, String
    attribute :postal_code, String
    attribute :country, String

    def as_json(options = nil)
      camelized_json = Thesslstore::Utils.to_camel_case(attributes)
    end

  end
end
