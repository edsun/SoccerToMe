class RemoveOnSaleFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :on_sale
      end

  def down
    add_column :products, :on_sale, :boolean
  end
end
