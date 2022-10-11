class LaunchServiceProvider < ApplicationRecord
  has_many :launchers

  self.inheritance_column = :_type_disabled
end
