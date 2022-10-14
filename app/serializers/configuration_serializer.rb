class ConfigurationSerializer < ActiveModel::Serializer
  attributes :id, :launch_library_id, :url, :name, :family, :full_name, :variant, :created_at, :updated_at
end
