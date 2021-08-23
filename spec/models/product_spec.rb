require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    
    it 'should save properly when all fields are filled in correctly' do
      @category = Category.new(name: 'Miscellaneous')
      @product = Product.new(name: 'Basketball', price: 3000, quantity: 48, category: @category)

      expect(@product).to be_valid
    end

    it 'should not save when the name field is left blank' do
      @category = Category.new(name: 'Miscellaneous')
      @product = Product.new(name: nil, price: 3000, quantity: 48, category: @category)

      expect(@product.errors[:name]).to be_empty
    end

    it 'should not save when the price field is left blank' do
      @category = Category.new(name: 'Miscellaneous')
      @product = Product.new(name: 'Basketball', price: nil, quantity: 48, category: @category)

      expect(@product.errors[:price]).to be_empty
    end

    it 'should not save when the quantity field is left blank' do
      @category = Category.new(name: 'Miscellaneous')
      @product = Product.new(name: 'Basketball', price: 3000, quantity: nil, category: @category)

      expect(@product.errors[:quantity]).to be_empty
    end

    it 'should not save when the category field is left blank' do
      @category = Category.new(name: 'Miscellaneous')
      @product = Product.new(name: 'Basketball', price: 3000, quantity: 48, category: nil)

      expect(@product.errors[:category]).to be_empty
    end

  end
end