require 'rails_helper'

user = User.new(address: "5 rue Teulère, Bordeaux", email: "tony@gromail.com", password: "azertie", username: "PFiori")
cooker = Cooker.new(address: "32 rue Renière, bordeaux", username: "PP", first_name: "Pablo", last_name: "Picassiette", email: "pp@gromail.com", password: "azertie")
meal = Meal.new(name: "Salade de choux", typology: "starter", price: 2, stock: 8, cooker: cooker)
order = Order.new(user: user, cooker: cooker, statut: "paid")

RSpec.describe OrderItem, type: :model do

  subject {
    described_class.new(number: 1,
                        meal: meal,
                        order: order)
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a number" do
      subject.number = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a meal" do
      subject.meal = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a order" do
      subject.order = nil
      expect(subject).to_not be_valid
    end

  end
end
