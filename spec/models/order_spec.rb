require 'rails_helper'

RSpec.describe Order, type: :model do
  it "is valid with valid attributes" do
    customer = FactoryBot.create(:customer)
    order = Order.new(product_name: 'Product A', product_count: 10, customer: customer)
    expect(order).to be_valid
  end

  it "is not valid without a product_name" do
    order = Order.new(product_count: 10)
    expect(order).not_to be_valid
  end

  it "is not valid without a product_count" do
    order = Order.new(product_name: 'Product A')
    expect(order).not_to be_valid
  end

  it "is not valid without a customer" do
    order = Order.new(product_name: 'Product A', product_count: 10)
    expect(order).not_to be_valid
  end
end
