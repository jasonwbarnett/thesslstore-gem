require 'virtus'
require 'active_support/json'

module Thesslstore
  class AuthRequest
    include Virtus.model

    attribute :PartnerCode, String
    attribute :AuthToken, String
    attribute :ReplayToken, String
    attribute :UserAgent, String
    attribute :Token, String
    attribute :TokenID, String
    attribute :TokenCode, String
    attribute :IsUsedForTokenSystem, Boolean, :default => false
  end
end
