require 'rails_helper'

cooker = Cooker.new(address: "32 rue Renière, bordeaux", username: "PP", first_name: "Pablo", last_name: "Picassiette", email: "pp@gromail.com", password: "azertie")
user = User.new(address: "5 rue Teulère, Bordeaux", email: "tony@gromail.com", password: "azertie", username: "PFiori")
meal = Meal.new(name: "Salade de choux", typology: "starter", price: 2, stock: 8, cooker: cooker)

RSpec.describe Note, type: :model do

  subject {
    described_class.new(user: user,
                        meal: meal,
                        rating: 5)
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a meal" do
      subject.meal = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a user" do
      subject.user = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a rating" do
      subject.rating = nil
      expect(subject).to_not be_valid
    end

  end
end
