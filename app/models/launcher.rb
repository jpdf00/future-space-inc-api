class Launcher < ApplicationRecord
  enum publishing_status: [ 'draft', 'trash', 'published' ]

  belongs_to :status
  belongs_to :launch_service_provider
  belongs_to :mission
  belongs_to :pad
  belongs_to :rocket

  accepts_nested_attributes_for :status
end
