require "rails_helper"

RSpec.describe "fruits page", type: :feature, vcr: true do
  it "shows the fruit from the search and its details" do
    visit "/"

    expect(page).to have_content("Search for Fruit")
    expect(page).to have_button("Search")

    fill_in "Search", with: "Apple"
    click_button("Search")

    expect(current_path).to eq("/fruits")
    expect(page).to have_content("Apple")
    expect(page).to have_content("Family: Rosaceae")
    expect(page).to have_content("Order: Rosales")
    expect(page).to have_content("Genus: Malus")
    expect(page).to have_content("Nutrition:")
    expect(page).to have_content("Fat: 0.4g")
    expect(page).to have_content("Sugar: 10.3g")
    expect(page).to have_content("Carbohydrates: 11.4g")
    expect(page).to have_content("Protein: 0.3g")
  end
end
