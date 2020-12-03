require 'rails_helper'

user = User.new(address: "5 rue Teulère, Bordeaux", email: "tony@gromail.com", password: "azertie", username: "PFiori")

RSpec.describe Search, type: :model do

  subject {
    described_class.new(address: "5 rue Teulère, Bordeaux",
                        user: user)
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a address" do
      subject.address = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a user" do
      subject.user = nil
      expect(subject).to_not be_valid
    end

  end
end
