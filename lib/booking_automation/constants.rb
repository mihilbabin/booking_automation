module BookingAutomation
  module Constants
    API_ROOT = 'https://manage.bookingautomation.com/api'.freeze
    JSON_API_ENDPOINT = "#{API_ROOT}/json".freeze
    XML_API_ENDPOINT = "#{API_ROOT}/xml".freeze

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