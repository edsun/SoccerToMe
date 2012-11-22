class ProductOrder < ActiveRecord::Base
  belongs_to :product, :order
end
