require 'rails_helper'

RSpec.describe "Orders", type: :request do
  let(:customer) { FactoryBot.create(:customer) }
  let(:order) { FactoryBot.create(:order, customer: customer) }

  describe "GET /orders" do
    it "renders a successful response" do
      get orders_path
      expect(response).to be_successful
    end
  end

  describe "GET /orders/:id" do
    it "renders a successful response" do
      get order_path(order)
      expect(response).to be_successful
    end
  end

  # Additional tests for create, update, destroy
end
