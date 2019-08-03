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

    def get_properties(prop_id = nil)
      self.class.post('/getProperties', body: xmlize(prop_id: prop_id))
    end

    def get_bookings
      
    end

    private

    def auth
      { username: @username, password: @password }
    end

    def xmlize(opts = {})
      XMLRequest.new(auth, opts)
    end
  end
end