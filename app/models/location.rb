class Location < ApplicationRecord
  has_many :pads, dependent: :destroy
end
