class Product < ActiveRecord::Base

  scope :published, -> { where(published: true) }
  
end
