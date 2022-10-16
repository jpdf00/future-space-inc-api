module Base
  class ApiCall
    def initialize
      @base_url = base_url
      @headers = headers
    end

    def execute_get(endpoint:)
      call(method: :get, endpoint:, payload: {})
    end

    private

    def call(method:, endpoint:, payload: {})
      execute_request do
        RestClient::Request.execute(
          url: "#{@base_url}#{endpoint}",
          method:,
          headers: @headers,
          payload:
        )
      end
    end

    def headers
      {}
    end

    def execute_request
      @response = yield
      JSON.parse(@response.body.squish)
    rescue RestClient::TooManyRequests => e
      raise(StandardError, JSON.parse(e.response.body))
    end
  end
end
