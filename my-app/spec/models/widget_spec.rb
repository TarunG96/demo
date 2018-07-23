require 'rails_helper'

RSpec.describe Widget, type: :model do
  it "is valid with valid attributes" do
    expect(Widget.new).to be_valid
  end  

  it "is not valid without a title" do
    widget = Widget.new(title: nil)
    expect(auction).to_not be_valid
  end

end
