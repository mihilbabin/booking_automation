require "bautom/version"

module Bautom
  class Error < StandardError; end
  API_ENDPOINT = 'https://manage.BookingAutomation.com/api'.freeze

  class Client
    attr_accessor :auth_token
    def initialize(auth_token)
      @auth_token = auth_token
    end
  end
end
