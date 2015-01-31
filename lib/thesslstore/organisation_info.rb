require 'virtus'
require 'thesslstore/organization_address'

module Thesslstore
  class OrganisationInfo
    include Virtus.model

    attribute :organization_name, String
    attribute :duns, String
    attribute :division, String
    attribute :incorporating_agency, String
    attribute :registration_number, String
    attribute :jurisdiction_city, String
    attribute :jurisdiction_region, String
    attribute :jurisdiction_country, String
    attribute :organization_address, Thesslstore::OrganizationAddress, :default => Thesslstore::OrganizationAddress.new
  end
end
