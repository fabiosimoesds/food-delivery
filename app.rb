#!/usr/bin/env ruby

require_relative 'app/controllers/meals_controller'
require_relative 'app/repositories/meal_repository'
require_relative 'router'

cvs_file_meals = File.join(__dir__, 'data/meals.csv')

repo_meal = MealRepository.new(cvs_file_meals)

meals_controller = MealsController.new(repo_meal)

router = Router.new(meals_controller)

router.run
