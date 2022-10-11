module ApiRequest
  class Base
    def initialize
      @base_url = base_url
      @method = request_method
      @headers = headers
    end

    def call(endpoint: , payload: {})
      execute_request do
        RestClient::Request.execute(
        url: "#{@base_url}#{endpoint}",
        method: @method,
        headers: @headers,
        payload: payload
        )
      end
    end

    private

    def headers
      {}
    end

    def execute_request
      @response = yield
      JSON.parse(@response.body.squish)
    rescue RestClient::TooManyRequests => err
      raise(StandardError, JSON.parse(err.response.body))
    end
  end
end