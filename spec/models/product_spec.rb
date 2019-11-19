require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "has a valid name" do
      @product.name = nil
      expect(@product.name).to_not_be_valid
    end

    it "has a valid price" do
      @product.price_cents = nil
      expect(@product.price_cents).to_not_be_valid
    end

    it "has a valid quantity" do
      @product.quantity = nil
      expect(@product.quantity).to_not_be_valid
    end
    
    # it "has a valid category" do
    #   @product.category_id = nil
    #   expect(@product.category_id).to_not_be_valid

    # end
  end
end



# it "is not valid without a title" do
#   expect(subject).to_not be_valid
# end

# it "is not valid without a description" do
#   subject.title = "Anything"
#   expect(subject).to_not be_valid
# end