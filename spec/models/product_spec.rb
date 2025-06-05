require 'rails_helper'


RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'is valid with all fields present' do
      category = Category.new(name: "Trees")
      product = Product.new(name: "Oak", price: 100, quantity: 5, category: category)
      expect(product).to be_valid
    end

    it 'is not valid without a name' do
      category = Category.new(name: "Shrubs")
      product = Product.new(name: nil, price: 20, quantity: 5, category: category)
      product.validate
      expect(product.errors.full_messages).to include("Name can't be blank")
    end  

    it 'is not valid without a price' do
      category = Category.new(name: "Shrubs")
      product = Product.new(name: "Lilac", price_cents: nil, quantity: 5, category: category)
      product.validate
      expect(product.errors.full_messages).to include("Price can't be blank") 
    end
    
    it 'is not valid without a quantity' do
      category = Category.new(name: "Shrubs")
      product = Product.new(name: "Lilac", price: 20, quantity: nil, category: category)
      product.validate
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'is not valid without a category' do
      product = Product.new(name: "Lilac", price: 20, quantity: 5, category: nil)
      product.validate
      expect(product.errors.full_messages).to include("Category can't be blank")
    end
  end
end