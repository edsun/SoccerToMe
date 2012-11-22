class Province < ActiveRecord::Base
  has_many :addresses, :foreign_key => 'province_id'
end
