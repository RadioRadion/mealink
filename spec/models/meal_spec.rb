require 'rails_helper'

cooker = Cooker.new(address: "32 rue Renière, bordeaux", username: "PP", first_name: "Pablo", last_name: "Picassiette", email: "pp@gromail.com", password: "azertie")

RSpec.describe Meal, type: :model do

  subject {
    described_class.new(name: "Salade de choux",
                        typology: "starter",
                        price: 2,
                        stock: 8,
                        cooker: cooker)
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a name" do
      subject.name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a price" do
      subject.price = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a stock" do
      subject.stock = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a typology" do
      subject.typology = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a typology 'starter', 'main_course', 'dessert'" do
      subject.typology = "trou normand"
      expect(subject).to_not be_valid
    end
    it "is not valid without a cooker" do
      subject.cooker = nil
      expect(subject).to_not be_valid
    end
  end
end
