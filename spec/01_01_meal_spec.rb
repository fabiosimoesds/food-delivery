require_relative "../app/models/meal"
describe "Meal - Creation", :meal do
  let(:meal) {Meal.new(id:3, name: 'Macaroni', price: 8)}

  it "should be initialized with a hash of properties" do
    properties = { id: 1, name: "Margherita", price: 8 }
    meal = Meal.new(properties)
    expect(meal).to be_a(Meal)
  end

  describe "id" do
    it "should return the id of the Meal" do
      expect(meal.id).to eq(3)
    end
  end

  describe "Name Validation" do
    it "Name is empty" do
      expect(meal.name_present?).to eq(false)
    end
  end

  describe "id=" do
    it "it should set id to different number end return the new id" do
      meal.id = 6
      expect(meal.id).to eq(6)
    end
  end

  describe "name" do
    it "should return the name of the Meal" do
      expect(meal.name).to eq('Macaroni')
    end
  end

  describe "name=" do
    it "should set name to a different name and return the new name" do
      meal.name = "Roast Dinner"
      expect(meal.name).to eq("Roast Dinner")
    end
  end

  describe "price" do
    it "should return the price of the Meal" do
      expect(meal.price).to eq(8)
    end
  end
end
