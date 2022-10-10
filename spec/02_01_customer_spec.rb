require_relative "../app/models/customer"
require 'spec_helper'

RSpec.describe "Customer - Tests" do
  let(:customer) {Customer.new(id: 1, name: 'Fabio', address: 'Barnstaple - Uk')}

  describe "Creating customer" do
    it "Should initialize with a hash of attributes" do
      attributes = {id: 2, name: 'Santos', address: 'London'}
      customer = Customer.new(attributes)
      expect(customer).to be_a(Customer)
    end
  end

  describe "id" do
    it "should return the id of the customer" do
      expect(customer.id).to eq(1)
    end
  end

  describe "id=" do
    it "should be able to change the id of the customer" do
      customer.id = 4
      expect(customer.id).to eq(4)
    end
  end

  describe "name" do
    it "should return the name of the customer" do
      expect(customer.name).to eq('Fabio')
    end
  end

  describe "name=" do
    it "should be able to change the name of the customer" do
      customer.name = 'John'
      expect(customer.name).to eq('John')
    end
  end

  describe "address" do
    it "Should return the address of the customer" do
      expect(customer.address).to eq('Barnstaple - Uk')
    end
  end

  describe "address=" do
    it "Should be able to change the addres of the customer" do
      customer.address = "Barcelona"
      expect(customer.address).to eq("Barcelona")
    end
  end
end
