class Rocket < ApplicationRecord
  has_many :launchers, dependent: :destroy

  belongs_to :configuration, optional: true
end
