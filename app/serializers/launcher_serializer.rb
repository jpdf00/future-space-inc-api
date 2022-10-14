class LauncherSerializer < ActiveModel::Serializer
  attributes :id, :url, :launch_library_id, :slug, :name, :net, :window_end, :window_start, :inhold, :tbdtime, :tbddate, :probability, :holdreason, :failreason, :hashtag, :webcast_live, :image, :infographic, :imported_t, :publishing_status, :manual_update, :created_at, :updated_at, :program

  belongs_to :status
  belongs_to :launch_service_provider
  belongs_to :mission
  belongs_to :pad
  belongs_to :rocket
end
