class OrbitSerializer < ActiveModel::Serializer
  attributes :id, :name, :abbrev, :created_at, :updated_at
end
