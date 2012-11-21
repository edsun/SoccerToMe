class Manufacturer < ActiveRecord::Base
  has_many :products
  attr_accessible :Name, :Description, :image_url
  
end
