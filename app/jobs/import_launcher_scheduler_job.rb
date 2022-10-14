class ImportLauncherSchedulerJob < ApplicationJob
  queue_as :default

  def perform
    Import::ImportLauncherDataService.new.call
  end
end