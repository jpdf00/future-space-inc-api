class Status < ApplicationRecord
  has_many :launchers, dependent: :destroy
end
