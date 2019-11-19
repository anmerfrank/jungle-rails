require 'rails_helper'

RSpec.feature "Visitor navigates to home page and clicks on a product", type: :feature, js: true do

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

  scenario "They visit the product page" do
    visit products_path

    save_and_open_screenshot

    expect(page).to have_css 'article.product', count: 10
  end
end