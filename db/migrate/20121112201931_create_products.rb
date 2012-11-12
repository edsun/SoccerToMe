class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :Name
      t.decimal :Stock_quantity
      t.decimal :Price
      t.text :Description
      t.string :image_url

      t.timestamps
    end
  end
end
