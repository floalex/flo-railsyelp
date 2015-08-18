class Restaurant < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :reviews
  
  def avg_reviews
    reviews.average(:rating).round(2)
  end
end
