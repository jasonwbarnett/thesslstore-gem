require 'virtus'
require 'active_support/json'
require 'thesslstore/auth_request'
require 'thesslstore/admin_contact'
require 'thesslstore/technical_contact'
require 'thesslstore/organisation_info'

module Thesslstore
  module Order
    class NewOrder
      include Virtus.model

      attribute :AuthRequest, Thesslstore::AuthRequest, :default => Thesslstore::AuthRequest.new
      attribute :CustomOrderID, String, :default => "OR%s" % Time.new.to_i
      attribute :ProductCode, String
      attribute :ExtraProductCodes, String
      attribute :OrganisationInfo, Thesslstore::OrganisationInfo, :default => Thesslstore::OrganisationInfo.new
      attribute :ValidityPeriod, Integer, :default => 12
      attribute :ServerCount, Integer, :default => 1
      attribute :CSR, String
      attribute :DomainName, String
      attribute :WebServerType, String, :default => 'Other'
      attribute :DNSNames, Array
      attribute :isCUOrder, Boolean, :default => false
      attribute :isRenewalOrder, Boolean, :default => false
      attribute :SpecialInstructions, String
      attribute :RelatedTheSSLStoreOrderID, String
      attribute :isTrialOrder, Boolean, :default => false
      attribute :AdminContact, Thesslstore::AdminContact, :default => Thesslstore::AdminContact.new
      attribute :TechnicalContact, Thesslstore::TechnicalContact, :default => Thesslstore::TechnicalContact.new
      attribute :ApproverEmail, String
      attribute :ReserveSANCount, Integer, :default => 0
      attribute :AddInstallationSupport, Boolean, :default => false
      attribute :EmailLanguageCode, String, :default => "EN"
      attribute :FileAuthDVIndicator, Boolean
      attribute :CNAMEAuthDVIndicator, Boolean
      attribute :SignatureHashAlgorithm, String, :default => "SHA2-256"


      def as_json(opts = nil)
        hash = super
        hash.reject! do |k,v|
          if Array === v
            v.empty?
          else
            v.nil?
          end
        end
      end

    end
  end
end
