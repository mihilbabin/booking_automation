require 'httparty'
require 'oj'
require 'booking_automation/constants'
require 'booking_automation/json_client'
require 'booking_automation/version'
require 'ext/hash'

module BookingAutomation
  class Error < StandardError; end

  class APIError < StandardError
    attr_accessor :response

    def initialize(msg, response)
      super(msg)
      @response = response
    end
  end
end
