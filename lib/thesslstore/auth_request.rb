require 'virtus'

module Thesslstore
  class AuthRequest
    include Virtus.model

    attribute :partner_code, String
    attribute :auth_token, String
    attribute :replay_token, String
    attribute :user_agent, String
    attribute :token, String
    attribute :token_id, String
    attribute :token_code, String
    attribute :is_used_for_token_system, Boolean, :default => false
  end
end
