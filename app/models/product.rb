class Product < ActiveRecord::Base
  
  attr_accessible :Name, :Stock_quantity, :Price, :manufacturer_id, :category_id, :image_url, :Description
  # Parents
  belongs_to :manufacturer
  belongs_to :category
  
  # Children
  has_many :reviews, :foreign_key => 'Product_ID'
  has_many :images
  
  #association
  has_many :orders, :through => :product_orders
  
  # Validation
  validates_presence_of :Name, :Stock_quantity, :Price, :category_id, :manufacturer_id
end
