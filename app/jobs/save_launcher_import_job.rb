class SaveLauncherImportJob < ApplicationJob
  queue_as :default
  retry_on StandardError, wait: 1.hour

  def perform(limit:, offset:)
    launches = ApiCall::TheSpaceDevs.new.execute_get(endpoint: "launch/?limit=#{limit}&offset=#{offset}")

    Launchers::SaveDataService.new(launches['results']).call
  end
end
