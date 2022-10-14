module Import
  module ApiCall
    class TheSpaceDevs < Base::ApiCall
      private

      define_method(:base_url) { cfg[self.class.to_s.demodulize.underscore.to_sym] }
    end
  end
end