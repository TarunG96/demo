require 'rails_helper'

RSpec.describe User, :type => :model do
  subject { described_class.new(pass: "kuch bhi", email: "kuch@bhi.com") }

  describe "Validations" do
    

    it "is not valid without a password" do
      subject.pass = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it "has one buyer" do
      assc = described_class.reflect_on_association(:buyer)
      expect(assc.macro).to eq :has_one
    end

  end

end