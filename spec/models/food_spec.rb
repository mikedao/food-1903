require "rails_helper"

RSpec.describe Food do
  it "has attributes" do
    attributes =  {
      offset: 0,
      group: "Oreos",
      name: "BEST EXTREME OREOS",
      ndbno: "45150541",
      ds: "LI",
      manu: "Petpro Products, Inc."
    }

    food = Food.new(attributes)

    expect(food.ndb_number).to eq(attributes[:ndbno])
    expect(food.name).to eq(attributes[:name])
    expect(food.data_source).to eq(attributes[:ds])
    expect(food.food_group).to eq(attributes[:group])
    expect(food.manufacturer).to eq(attributes[:manu])
  end

  it "has different attributes" do
    attributes =  {
      offset: 0,
      group: "Samoas",
      name: "GREAT COOKIE",
      ndbno: "451541",
      ds: "ASD",
      manu: "Girl Scout Cookies"
    }

    food = Food.new(attributes)

    expect(food.ndb_number).to eq(attributes[:ndbno])
    expect(food.name).to eq(attributes[:name])
    expect(food.data_source).to eq(attributes[:ds])
    expect(food.food_group).to eq(attributes[:group])
    expect(food.manufacturer).to eq(attributes[:manu])
  end


end
