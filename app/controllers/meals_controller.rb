require_relative '../models/meal'
require_relative '../views/meal_view'
require "pry"

class MealsController
  def initialize(meals)
    @meals = meals
    @meal_view = MealView.new
  end

  def list_meals
    # Get all the meals from the repo
    meals = @meals.all
    # Send to the view to be listed on the app
    @meal_view.index(meals)
  end

  def add
    # Ask user for variables
    name = @meal_view.ask_input('Meals name: ')
    price = @meal_view.ask_input('Meals price: ').to_i
    # Create new Meal
    new_meal = Meal.new(name: name, price: price)
    # save new Meal
    @meals.create(new_meal)
  end
end
