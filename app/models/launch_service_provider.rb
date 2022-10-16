class LaunchServiceProvider < ApplicationRecord
  has_many :launchers, dependent: :destroy

  self.inheritance_column = :_type_disabled
end
