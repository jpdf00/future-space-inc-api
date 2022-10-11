module Import
  class ImportLauncherDataService
    LIMIT = 100

    def call
      for i in 0...19 do 
        SaveLauncherDataJob.perform_later(limit: LIMIT, offset: LIMIT * i)
      end
    end
  end
end