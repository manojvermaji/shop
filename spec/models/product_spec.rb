require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "product model testing" do
    it "validates product instance" do
      product = Product.new(title:"laptop", price:5000)
      expect(product).to be_valid
    end
   end
end
