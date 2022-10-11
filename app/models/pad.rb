class Pad < ApplicationRecord
  has_many :launchers

  belongs_to :location
end
