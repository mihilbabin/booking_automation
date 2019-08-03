module BookingAutomation
  class XMLClient
    include HTTParty
    base_uri Constants::XML_API_ENDPOINT
    headers 'Content-Type' => 'text/xml'

    attr_accessor :username, :password

    def initialize(username, password)
      @username = username
      @password = password
    end

    def get_properties(propid = nil)
      response = self.class.post('/getProperties', body: xmlize(propid: propid))
      parse! response
    rescue APIError => e
      e.response
    end

    def get_bookings(opts = {})
      valid_opts = opts.slice(*Constants::VALID_XML_BOOKING_OPTS)
      response = self.class.post('/getBookings', body: xmlize(opts))
      parse! response
    rescue APIError => e
      e.response
    end

    private

    def parse!(response)
      hash = Hash.from_xml(response.body)
      raise APIError.new(
        "API Error: #{hash['code']} #{hash['error']}",
        hash
      ) if hash.key?('error')
      hash
    end

    def auth
      { username: @username, password: @password }
    end

    def xmlize(opts = {})
      XMLRequest.new(auth, opts).to_xml
    end
  end
end