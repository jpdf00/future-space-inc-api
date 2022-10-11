class Mission < ApplicationRecord
  has_many :launchers

  belongs_to :orbit

  self.inheritance_column = :_type_disabled
end
