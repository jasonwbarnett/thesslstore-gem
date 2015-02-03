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

    def Token=(token)
      self.PartnerCode = nil
      self.AuthToken = nil
      self.IsUsedForTokenSystem = true
      super token
    end

    def as_json(opts = nil)
      hash = super
      hash.reject! { |k,v| v.nil?  }
    end

  end
end
