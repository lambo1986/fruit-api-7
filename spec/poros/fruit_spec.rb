require "rails_helper"

RSpec.describe Fruit do
  it "exists" do
    attrs = {
      name: "Apple",
      id: 1,
      family: "Rosacae",
      order: "Rosales",
      genus: "Malus",
      nutritions: {
        calories: 52,
        fat: 0.4,
        sugar: 10.3,
        carbohydrates: 11.4,
        protein: 0.3
      }
    }

    fruit = Fruit.new(attrs)

    expect(fruit).to be_a(Fruit)
    expect(fruit.id).to eq(1)
    expect(fruit.name).to eq("Apple")
    expect(fruit.family).to eq("Rosacae")
    expect(fruit.order).to eq("Rosales")
    expect(fruit.genus).to eq("Malus")
    expect(fruit.nutritions[:calories]).to eq(52)
    expect(fruit.nutritions[:carbohydrates]).to eq(11.4)
    expect(fruit.nutritions[:protein]).to eq(0.3)
    expect(fruit.nutritions[:fat]).to eq(0.4)
    expect(fruit.nutritions[:sugar]).to eq(10.3)
  end
end
