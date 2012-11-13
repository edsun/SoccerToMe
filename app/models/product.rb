class Product < ActiveRecord::Base
  belongs_to :manufacturer, :category
  
  has_many :reviews
  has_many :images
end
