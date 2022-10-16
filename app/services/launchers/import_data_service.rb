module Launchers
  class ImportDataService
    def initialize
      @limit = limit_per_request
      @requests = max_entries / limit_per_request
    end

    def call
      (0...@requests).each do |i|
        SaveLauncherImportJob.perform_later(limit: @limit, offset: @limit * i)
      end
    end

    private

    define_method(:cfg) { Rails.application.config.the_space_devs }
    define_method(:max_entries) { cfg[:max_entries] }
    define_method(:limit_per_request) { cfg[:limit_per_request] }
  end
end
