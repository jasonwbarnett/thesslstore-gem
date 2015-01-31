require "httparty"
require "thesslstore/new_order"

module Thesslstore
  class Client
    include HTTParty
    format :json

    attr_reader :partner_code, :auth_token, :auth_request
    attr_accessor :last_result

    def initialize(options = {})
      @partner_code = options[:partner_code] || Thesslstore.config[:partner_code] || fail("Missing required options: :partner_code")
      @auth_token   = options[:auth_token]   || Thesslstore.config[:auth_token]   || fail("Missing required options: :auth_token")
      @auth_request = {'AuthRequest' => {'PartnerCode' => @partner_code, 'AuthToken' => @auth_token}}

      self.class.base_uri('https://api.thesslstore.com/rest')
      # Sets the headers for every response
      self.class.headers({'Content-Type' => 'application/json; charset=utf-8', 'Accept' => 'application/json'})
    end

    def new_order(options = {})
      product_code = options[:product_code]
      csr_path     = options[:csr_path]
      csr          = options[:csr]

      fail("You must provide a :csr_path or :csr in base64 encoding.")              unless csr_path || csr
      fail("You must provide only one of the following options: :csr_path or :csr") if     csr_path && csr

      csr = csr_to_base64(csr_path) if csr_path
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
