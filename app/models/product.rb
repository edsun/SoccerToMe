class Product < ActiveRecord::Base
  # Parents
  belongs_to :manufacturer
  belongs_to :category
  
  # Children
  has_many :reviews, :foreign_key => 'Product_ID'
  has_many :images
  
  # Validation
  validates_presence_of :name, :stock_quantity, :price, :category_id, :manufacturer_id
end
