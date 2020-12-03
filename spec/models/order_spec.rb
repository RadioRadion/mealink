require 'rails_helper'

user = User.new(address: "5 rue Teulère, Bordeaux", email: "tony@gromail.com", password: "azertie", username: "PFiori")
cooker = Cooker.new(address: "32 rue Renière, bordeaux", username: "PP", first_name: "Pablo", last_name: "Picassiette", email: "pp@gromail.com", password: "azertie")

RSpec.describe Order, type: :model do

  subject {
    described_class.new(user: user,
                        cooker: cooker,
                        statut: "paid")
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a user" do
      subject.user = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a cooker" do
      subject.cooker = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a statut" do
      subject.statut = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a statut 'pending', 'paid' or 'done'" do
      subject.statut = "ok man"
      expect(subject).to_not be_valid
    end

  end
end
