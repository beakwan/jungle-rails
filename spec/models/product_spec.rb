require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'saves properly when all fields are filled in correctly' do
      @category = Category.new(name: 'Miscellaneous')
      @product = Product.new(name: 'Basketball', price: 3000, quantity: 48, category: @category)

      expect(@product).to be_valid
    end
  end
end