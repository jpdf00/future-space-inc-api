class ScheduleLauncherImportJob < ApplicationJob
  queue_as :default

  def perform
    Launchers::ImportDataService.new.call
  end
end