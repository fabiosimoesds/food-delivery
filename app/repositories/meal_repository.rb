require "pry"
require "csv"

class MealRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @meals = []
    load_csv
  end

  def all
    @meals
  end

  def create(new_meal)
    @meals.empty? ? new_meal.id = 1 : new_meal.id = @meals.last.id.to_i + 1
    @meals << new_meal
    save
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      unless row.empty?
        row[:id] = row[:id].to_i
        row[:price] = row[:price].to_i
        @meals << Meal.new(row)
      end
    end
  end

  def save
    CSV.open(@csv_file_path, 'wb') do |csv|
      csv << ['id', 'name', 'price']

      @meals.each do |meal|
        csv << [meal.id, meal.name, meal.price]
      end
    end
  end
end
