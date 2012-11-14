class Product < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :category
  
  has_many :reviews, :foreign_key => 'Product_ID'
  has_many :images
end
