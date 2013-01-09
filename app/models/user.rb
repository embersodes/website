class User < ActiveRecord::Base
  attr_accessible :email, :name, :site_url

  before_create { generate_token(:token) }
  
  validates_presence_of :github_uid
  validates_uniqueness_of :github_uid
  
  def self.create_from_omniauth(omniauth)
    User.new.tap do |user|
      user.github_uid = omniauth["uid"]
      user.github_username = omniauth["info"]["nickname"]
      user.email = omniauth["info"]["email"]
      user.name = omniauth["info"]["name"]
      user.site_url = omniauth["info"]["urls"]["Blog"] if omniauth["info"]["urls"]
      user.gravatar_token = omniauth["extra"]["raw_info"]["gravatar_id"] if omniauth["extra"] && omniauth["extra"]["raw_info"]
      user.save!
    end
  end
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
  
  def display_name
    name.present? ? name : github_username
  end
end
