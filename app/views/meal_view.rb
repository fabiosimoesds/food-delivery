class MealView
  def index(meals)
    meals.each_with_index do |meal, index|
      puts "#{index+1} - #{meal.name} $#{meal.price}.00"
    end
  end

  def ask_input(question)
    puts question
    input = gets.chomp
  end
end
