class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.boolean :main_address
      t.string :street_no
      t.string :street_name
      t.string :city
      t.string :postal_code
      t.integer :customer_id
      t.string :province_id

      t.timestamps
    end
  end
end
