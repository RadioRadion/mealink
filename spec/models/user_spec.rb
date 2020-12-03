require 'rails_helper'

RSpec.describe User, type: :model do

  subject {
    described_class.new(address: "20 place Fernand Lafargue, Bordeaux",
                        email: "romy@gromail.com",
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
