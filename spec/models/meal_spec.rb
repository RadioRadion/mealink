require 'rails_helper'

cooker = Cooker.new(address: "32 rue Renière, bordeaux", username: "PP", first_name: "Pablo", last_name: "Picassiette", email: "pp@gromail.com", password: "azertie")

RSpec.describe Meal, :type => :model do
  it "is valid with valid attributes" do
    meal = Meal.new(name: "Salade de choux", typology: "starter", price: 2, stock: 8, cooker: cooker)
    expect(meal).to be_valid
  end
  it "is not valid without a name" do
    meal = Meal.new(typology: "starter", price: 2, stock: 8, cooker: cooker)
    expect(meal).to_not be_valid
  end
  it "is not valid without a price" do
    meal = Meal.new(name: "Salade de choux", typology: "starter", stock: 8, cooker: cooker)
    expect(meal).to_not be_valid
  end
  it "is not valid without a stock" do
    meal = Meal.new(name: "Salade de choux", typology: "starter", price: 2, cooker: cooker)
    expect(meal).to_not be_valid
  end
  it "is not valid without a typology" do
    meal = Meal.new(name: "Salade de choux", price: 2, stock: 8, cooker: cooker)
    expect(meal).to_not be_valid
  end
end
