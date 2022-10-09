module ApiRequest
  module TheSpaceDevs
    class Base < ApiRequest::Base
      private

      define_method(:cfg) { Rails.application.config.the_space_devs_cfg }
      define_method(:base_url) { cfg[:base_url] }
    end
  end
end