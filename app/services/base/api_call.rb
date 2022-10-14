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

    define_method(:cfg) { Rails.application.config.base_urls_cfg }

    def call(method:, endpoint:, payload: {})
      execute_request do
        RestClient::Request.execute(
        url: "#{@base_url}#{endpoint}",
        method: method,
        headers: @headers,
        payload: payload
        )
      end
    end

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