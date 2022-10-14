class PadSerializer < ActiveModel::Serializer
  attributes :id, :url, :agency_id, :name, :info_url, :wiki_url, :map_url, :latitude, :longitude, :map_image, :total_launch_count, :created_at, :updated_at

  belongs_to :location
end
