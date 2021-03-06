require 'rails_helper'

RSpec.describe Cooker, type: :model do

  subject {
    described_class.new(address: "32 rue Renière, Bordeaux",
                        username: "PP",
                        first_name: "Pablo",
                        last_name: "Picassiette",
                        email: "pp@gromail.com",
                        password: "azertie")
  }

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end
    it "is not valid without a address" do
      subject.address = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a username" do
      subject.username = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a first_name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a last_name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end
end
