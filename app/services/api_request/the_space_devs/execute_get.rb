module ApiRequest
  module TheSpaceDevs
    class ExecuteGet < ApiRequest::TheSpaceDevs::Base
      private

      define_method(:request_method) { self.class.to_s.demodulize.gsub(/Execute/, '').downcase.to_sym }
    end
  end
end