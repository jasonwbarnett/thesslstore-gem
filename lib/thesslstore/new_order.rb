require 'virtus'
require 'active_support/inflector'
require 'thesslstore/auth_request'
require 'thesslstore/admin_contact'
require 'thesslstore/technical_contact'
require 'thesslstore/organisation_info'

module Thesslstore
  class NewOrder
    include Virtus.model

    attribute :auth_request, Thesslstore::AuthRequest, :default => Thesslstore::AuthRequest.new
    attribute :custom_order_id, String, :default => "OR%s" % Time.new.to_i
    attribute :product_code, String
    attribute :extra_product_codes, String
    attribute :organisation_info, Thesslstore::OrganisationInfo, :default => Thesslstore::OrganisationInfo.new
    attribute :validity_period, Integer, :default => 12
    attribute :server_count, Integer, :default => 1
    attribute :csr, String
    attribute :domain_name, String
    attribute :web_server_type, String, :default => 'Other'
    attribute :dns_names, Array
    attribute :is_cu_order, Boolean, :default => false
    attribute :is_renewal_order, Boolean, :default => false
    attribute :special_instructions, String
    attribute :related_the_ssl_store_order_id
    attribute :is_trial_order, Boolean, :default => false
    attribute :admin_contact, Thesslstore::AdminContact, :default => Thesslstore::AdminContact.new
    attribute :technical_contact, Thesslstore::TechnicalContact, :default => Thesslstore::TechnicalContact.new
    attribute :approver_email, String
    attribute :reserve_san_count, Integer
    attribute :add_installation_support, Boolean
    attribute :email_language_code, String
    attribute :file_auth_dv_indicator, Boolean
    attribute :cname_auth_dv_indicator, Boolean
    attribute :signature_hash_algorithm, String, :default => "SHA2-256"
  end
end
