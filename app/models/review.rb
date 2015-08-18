class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  
  default_scope { order('updated_at DESC') }
end
