class AddManufacturerIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :manfacturer_id, :integer

  end
end
