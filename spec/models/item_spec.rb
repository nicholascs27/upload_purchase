require 'rails_helper'

RSpec.describe Item, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      item = Item.new(price: 10.0).save
      expect(item).to eq(false)
    end
    
    it 'ensures price presence' do
      item = Item.new(name: "Item").save
      expect(item).to eq(false)
    end

    it 'ensures price numericality' do
      item = Item.new(price: "abc", name: "Item").save
      expect(item).to eq(false)
    end
    
    it 'should save successfully' do 
      item = Item.new(name: 'Luis', price: 10.5).save
      expect(item).to eq(true)
    end
  end
end
