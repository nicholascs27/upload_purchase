class Purchase < ApplicationRecord

  belongs_to :item
  belongs_to :merchant
  belongs_to :purchaser

  validates_presence_of :item_id, :merchant_id, :purchaser_id, :count

  def self.import(file)
    ActiveRecord::Base.transaction do
      begin
        CSV.foreach(file.path, headers: true) do |row|
          
          purchaser = Purchaser.find_or_create_by(name: row["purchaser name"])
          item = Item.find_or_create_by(name: row["item description"], price: row["item price"])
          merchant = Merchant.find_or_create_by(name: row["merchant address"], address: row["merchant name"])

          Purchase.create!(item: item, merchant: merchant, purchaser: purchaser, count: row["purchase count"])
        end
      end
    end
  end

  def total
    (item.price * self.count).to_f
  end
end
