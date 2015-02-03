require "httparty"
require "thesslstore/order/new_order"
require "thesslstore/order/download"
require "thesslstore/auth_request"

module Thesslstore
  class Client
    include HTTParty
    format :json

    attr_reader :auth_request

    def initialize(options = {})
      partner_code  = options[:partner_code] || Thesslstore.config[:partner_code] || fail("Missing required options: :partner_code")
      auth_token    = options[:auth_token]   || Thesslstore.config[:auth_token]   || fail("Missing required options: :auth_token")
      @auth_request = Thesslstore::AuthRequest.new({'PartnerCode' => partner_code, 'AuthToken' => auth_token})

      self.class.base_uri('https://api.thesslstore.com/rest')
      # Sets the headers for every request
      self.class.headers({'Content-Type' => 'application/json; charset=utf-8', 'Accept' => 'application/json'})
    end

    def create_new_order(options = {})
      new_order = Thesslstore::Order::NewOrder.new({AuthRequest: @auth_request})
    end

    def create_download(options = {})
      new_order = Thesslstore::Order::Download.new({AuthRequest: @auth_request})
    end

    def base_order

    end

    def validate_order(order)
    end

    def csr_to_base64(csr_path)
      require 'base64'
      Base64.encode64(File.read(csr_path))
    end
  end
end
