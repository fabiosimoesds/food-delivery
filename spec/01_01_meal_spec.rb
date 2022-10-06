require_relative "../app/models/meal"
describe "Meal", :meal do
  let(:meal) {Meal.new(id:3, name: 'Macaroni')}

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
end
