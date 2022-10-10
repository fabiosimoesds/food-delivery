#!/usr/bin/env ruby

require_relative 'app/controllers/meals_controller'
require_relative 'app/repositories/meal_repository'
require_relative 'app/controllers/customers_controller'
require_relative 'app/repositories/customer_repository'
require_relative 'router'

csv_file_meals = File.join(__dir__, 'data/meals.csv')
csv_file_customers = File.join(__dir__, 'data/customer.csv')

repo_meal = MealRepository.new(csv_file_meals)
repo_customer = CustomerRepository.new(csv_file_customers)

meals_controller = MealsController.new(repo_meal)
customers_controller = CustomersController.new(repo_customer)

router = Router.new(meals_controller, customers_controller)

router.run
