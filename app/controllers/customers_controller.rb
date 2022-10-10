require_relative '../models/customer'
require_relative '../views/customer_view'

class CustomersController
  def initialize(customers)
    @customers = customers
    @customer_view = CustomerView.new
  end

  def list_customers
    customers = @customers.all
    @customer_view.index(customers)
  end

  def add_customer
    name = @customer_view.ask_input("Name: ")
    address = @customer_view.ask_input("Address: ")
    new_customer = Customer.new(name: name, address: address)
    @customers.create(new_customer)
  end
end
