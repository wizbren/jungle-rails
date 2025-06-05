require 'rails_helper'


RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'is valid with all fields present' do
      category = Category.new(name: "Trees")
      product = Product.new(name: "Oak", price: 100, quantity: 5, category: category)
      expect(product).to be_valid
    end
  end
end