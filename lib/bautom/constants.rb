module Bautom
  module Constants
    API_ENDPOINT = 'https://manage.bookingautomation.com/api/json'.freeze

    PARSE_ERROR_MSG = 'Got encoding different from JSON. Please check passed options'.freeze

    DEFAULT_PROPERTY_OPTIONS = {
      includeRooms: false,
      includeRoomUnits: false,
      includeAccountAccess: false
    }.freeze

    DEFAULT_BOOKING_OPTIONS = {
      includeInvoice: false,
      includeInfoItems: false
    }.freeze
  end
end