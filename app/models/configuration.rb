class Configuration < ApplicationRecord
  has_many :rockets, dependent: :destroy
end
