require 'rails_helper'

RSpec.describe Purchaser, type: :model do
  context 'validation tests' do
    it 'ensures name presence' do
      purchaser = Purchaser.new(name: "").save
      expect(purchaser).to eq(false)
    end
  
    it 'should save successfully' do 
      purchaser = Purchaser.new(name: 'Luis').save
      expect(purchaser).to eq(true)
    end
  end
end
