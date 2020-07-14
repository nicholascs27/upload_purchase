require 'rails_helper'

RSpec.describe Merchant, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      merchant = Merchant.new(address: "avenue 1").save
      expect(merchant).to eq(false)
    end
    
    it 'ensures price presence' do
      merchant = Merchant.new(name: "Luis").save
      expect(merchant).to eq(false)
    end
    
    it 'should save successfully' do 
      merchant = Merchant.new(name: 'Luis', address: "avenue 1").save
      expect(merchant).to eq(true)
    end
  end
end
