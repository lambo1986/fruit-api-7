require "rails_helper"

RSpec.describe FruityService, vcr: true do
  describe ".fruit_by_name" do
    it "finds fruit by name" do
      fruit = FruityService.new.fruit_by_name("Apple")

      expect(fruit[:name]).to be_a String
      expect(fruit[:family]).to be_a String
      expect(fruit[:genus]).to be_a String
      expect(fruit[:order]).to be_a String
      expect(fruit[:id]).to be_an Integer
      expect(fruit[:nutritions][:calories]).to be_an Integer
      expect(fruit[:nutritions][:fat]).to be_a Float
      expect(fruit[:nutritions][:sugar]).to be_a Float
      expect(fruit[:nutritions][:carbohydrates]).to be_a Float
      expect(fruit[:nutritions][:protein]).to be_a Float
    end
  end

  describe ".all_fruits" do
    it "finds all fruits" do
      fruits = FruityService.new.all_fruits
      
      expect(fruits).to be_an Array
      expect(fruits.first[:name]).to be_a String
      expect(fruits.first[:family]).to be_a String
    end
  end
end
