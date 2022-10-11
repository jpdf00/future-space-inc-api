class Rocket < ApplicationRecord
  has_many :launchers

  belongs_to :configuration
end
