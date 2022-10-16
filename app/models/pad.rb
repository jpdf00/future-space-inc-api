class Pad < ApplicationRecord
  has_many :launchers, dependent: :destroy

  belongs_to :location, optional: true
end
