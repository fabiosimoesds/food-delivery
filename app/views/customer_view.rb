class CustomerView
  def index(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name}, Address: #{customer.address}"
    end
  end

  def ask_input(question)
    puts question
    gets.chomp
  end
end
