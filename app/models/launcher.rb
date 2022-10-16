class Launcher < ApplicationRecord
  enum publishing_status: [ 'draft', 'trash', 'published' ]

  belongs_to :status, optional: true
  belongs_to :launch_service_provider, optional: true
  belongs_to :mission, optional: true
  belongs_to :pad, optional: true
  belongs_to :rocket, optional: true

  accepts_nested_attributes_for :status
end
