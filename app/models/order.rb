class Order < ActiveRecord::Base
  #associations
  has_many :products, :through => :product_orders
end
