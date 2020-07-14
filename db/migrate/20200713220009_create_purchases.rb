class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :purchaser_id
      t.integer :item_id
      t.integer :merchant_id
      t.integer :count

      t.timestamps
    end
  end
end
