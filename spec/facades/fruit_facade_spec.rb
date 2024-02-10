require "rails_helper"

RSpec.describe FruitFacade, vcr: true do
  describe "initialize" do
    it "exists" do
      facade = FruitFacade.new("Apple")

      expect(facade).to be_a FruitFacade
      expect(facade.fruit_name).to eq("Apple")
    end
  end

  describe "class methods" do
    it "has a .fruits method" do
      facade = FruitFacade.new("Apple")

      expect(facade.fruits).to be_a Array
      expect(facade.fruits.first).to be_a Fruit
    end

    it "has a .similar_fruits_by_sugar method" do
      facade = FruitFacade.new("Apple")

      expect(facade.similar_fruits_by_sugar).to be_a Array
      expect(facade.similar_fruits_by_sugar.first).to be_a Fruit
      expect(facade.similar_fruits_by_sugar.count).to be 9
    end
  end
end
