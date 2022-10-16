class Orbit < ApplicationRecord
  has_many :missions, dependent: :destroy
end
