require 'virtus'
require 'thesslstore/organization_address'

module Thesslstore
  class OrganisationInfo
    include Virtus.model

    attribute :OrganizationName, String
    attribute :DUNS, String
    attribute :Division, String
    attribute :IncorporatingAgency, String
    attribute :RegistrationNumber, String
    attribute :JurisdictionCity, String
    attribute :JurisdictionRegion, String
    attribute :JurisdictionCountry, String
    attribute :OrganizationAddress, Thesslstore::OrganizationAddress, :default => Thesslstore::OrganizationAddress.new
  end
end
