class Address < ActiveRecord::Base
  belongs_to :province
  belongs_to :customer
end
