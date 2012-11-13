class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :Image_url
      t.string :alt

      t.timestamps
    end
  end
end
