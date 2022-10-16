module ApiCall
  class TheSpaceDevs < Base::ApiCall
    private

    define_method(:cfg) { Rails.application.config.send(self.class.to_s.demodulize.underscore.to_sym) }
    define_method(:base_url) { cfg[:url] }
  end
end