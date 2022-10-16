class Mission < ApplicationRecord
  has_many :launchers, dependent: :destroy

  belongs_to :orbit, optional: true

  self.inheritance_column = :_type_disabled
end
