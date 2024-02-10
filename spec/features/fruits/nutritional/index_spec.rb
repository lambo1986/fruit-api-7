require "rails_helper"

RSpec.describe "nutritional page", type: :feature, vcr: true do
  it "shows similar fruits by nutritional value, and each fruit is a link to their fruit page" do
    visit "/"

    expect(page).to have_content("Search for Fruit")
    expect(page).to have_button("Search")

    fill_in "Search", with: "Apple"
    click_button("Search")

    expect(current_path).to eq("/fruits")
    expect(page).to have_content("Apple")
    expect(page).to have_link("Find Similar Fruits By Nutritional Value")

    click_link("Find Similar Fruits By Nutritional Value")#(https://fruityvice.com/api/fruit/sugar?min=9&max=11)

    expect(current_path).to eq("/fruits/nutritional")
    expect(page).to have_content("Fruits With Similar Sugar Levels:")
    expect(page).to have_link("Pear")
    expect(page).to have_link("Kiwi")
    expect(page).to have_link("Pineapple")
    expect(page).to have_link("Passionfruit")
    expect(page).to have_link("Plum")
    expect(page).to have_link("Apple")
    expect(page).to have_link("Guava")
    expect(page).to have_link("Tangerine")
    expect(page).to have_link("Kiwifruit")

    click_link("Plum")

    expect(current_path).to eq("/fruits")
    expect(page).to have_content("Plum")
    expect(page).to have_link("Find Similar Fruits By Nutritional Value")
  end
end
