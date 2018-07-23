require 'rails_helper'

RSpec.describe Widget, type: :model do
  it "is valid with valid attributes" do
    expect(Widget.new(name: 'asd')).to be_valid
  end  

  it "is not valid without a name" do
    widget = Widget.new(name: 'sad')
    expect(widget).to be_valid
  end

end
