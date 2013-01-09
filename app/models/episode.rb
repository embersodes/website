class Episode < ActiveRecord::Base
  attr_accessible :long_description, :posted_time, :short_description, :title
  
  validates :title, :presence => true
  validates :short_description, :presence => true
  validates :long_description, :presence => true
  
  def posted
    posted_time ? posted_time <= Time.now : false
  end
  
  def asset_folder
    "/assets/episodes/#{id}"
  end
  
  def small_image_src
    "#{asset_folder}/small.jpg"
  end
  
  def large_image_src
    "#{asset_folder}/large.jpg"
  end
  
  def video_src
    "#{asset_folder}/video.webm"
  end
  
end
