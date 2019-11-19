require 'rails_helper'

RSpec.feature "Visitor adds an item to cart", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        quantity: 10,
        price: 64.99
      )
    end
  end


  scenario "The cart size increases when an item is added" do
    visit root_path

    save_and_open_screenshot

    expect(page).to have_css 'article.product', count: 10
    within ('#navbar') do 
      expect(page).to have_content ('My Cart (0)')
  end
    product = page.first('article.product')
    button = product.find_button('Add')
    
    button.click
    within ('#navbar') do 
      expect(page).to have_content ('My Cart (1)')
      save_and_open_screenshot
   end
  end
end