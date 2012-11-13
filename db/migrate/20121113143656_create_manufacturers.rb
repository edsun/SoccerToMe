class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :Name
      t.text :Description

      t.timestamps
    end
  end
end
