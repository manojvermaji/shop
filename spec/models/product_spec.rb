require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    # Create an invalid product without a price
    @invalid_product_without_price = Product.new(title: "Fan")

    # Create an invalid product without a title
    @invalid_product_without_title = Product.new(price: 200)
  end

  it "validates product instance" do
    product = Product.new(title: "Fan", price: 200)
    expect(product).to be_valid
  end

  describe 'title' do
    it 'validates presence of title' do
      product = @invalid_product_without_title
      product.valid?
      expect(product.errors[:title]).to include("can't be blank")
    end
  end

  describe 'price' do
    it 'validates presence of price' do
      product = @invalid_product_without_price
      product.valid?
      expect(product.errors[:price]).to include("can't be blank")
    end
  end  
end
