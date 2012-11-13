class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :Name
      t.text :Description

      t.timestamps
    end
  end
end
