class MissionSerializer < ActiveModel::Serializer
  attributes :id, :launch_library_id, :name, :description, :launch_designator, :type, :created_at, :updated_at

  belongs_to :orbit
end
