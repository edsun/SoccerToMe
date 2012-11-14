class Product < ActiveRecord::Base
  # Parents
  belongs_to :manufacturer
  belongs_to :category
  
  # Children
  has_many :reviews, :foreign_key => 'Product_ID'
  has_many :images
  
  # Validation
  validates_presence_of :Name, :Stock_quantity, :Price, :category_id, :manufacturer_id
end
