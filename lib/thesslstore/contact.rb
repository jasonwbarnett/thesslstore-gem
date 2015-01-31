require 'virtus'

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
  end
end
