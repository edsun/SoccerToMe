class Customer < ActiveRecord::Base
  has_many :addresses, :foreign_key => 'customer_id'
end
