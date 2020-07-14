require 'rails_helper'

RSpec.describe Purchase, type: :model do
  context 'validation tests' do

    let (:item) { Item.find_or_create_by(name: "New Item", price: 10.5) }
    let (:purchaser) { Purchaser.find_or_create_by(name: "Lopes") }
    let (:merchant) { Merchant.find_or_create_by(name: "Luzia Pizza", address: "Avenue 1") }

    it 'ensures item presence' do
      purchase = Purchase.new(purchaser: purchaser, merchant: merchant, count: 3).save
      expect(purchase).to eq(false)
    end

    it 'ensures purchaser presence' do
      purchase = Purchase.new(item: item, merchant: merchant, count: 3).save
      expect(purchase).to eq(false)
    end

    it 'ensures merchant presence' do
      purchase = Purchase.new(item: item, purchaser: purchaser, count: 3).save
      expect(purchase).to eq(false)
    end
  
    it 'should save successfully' do 

      purchase = Purchase.new(item: item, purchaser: purchaser, merchant: merchant, count: 3).save
      expect(purchase).to eq(true)
    end
  end
end
