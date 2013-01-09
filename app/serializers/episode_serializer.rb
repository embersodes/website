class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :title, :short_description, :long_description, :posted_time, :posted, :small_image_src, :large_image_src, :video_src
end
