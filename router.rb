require "pry"
class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
  end

  def run
    while @running
      navigation
      action = gets.chomp.to_i
      print `clear`
      action(action)
    end
  end

  def action(action)
    case action
    when 1 then @meals_controller.list_meals
    when 2 then @meals_controller.add
    when 3 then @customers_controller.add
    when 0 then exit
    end
  end

  def exit
    @running = false
  end

  def navigation
    puts ""
    puts "1 - See All Meals"
    puts "2 - Create new Meal"
    puts "3 - See All Customers"
    puts "0 - Exit"
  end
end
