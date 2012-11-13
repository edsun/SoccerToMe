class Product < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
  
  has_many :reviews
  has_many :images
end
