class AddProductIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :Product_ID, :integer

  end
end
