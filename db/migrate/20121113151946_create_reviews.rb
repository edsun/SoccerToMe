class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :Title
      t.text :Body
      t.decimal :Rating

      t.timestamps
    end
  end
end
