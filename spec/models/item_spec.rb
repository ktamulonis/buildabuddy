require 'rails_helper'

RSpec.describe Item, type: :model do
  it "has a valid factory" do 
  	expect(create :item).to be_valid
  end

  it "must have a description" do
    expect(build :item, description: nil).to_not be_valid
  end

  it "must have a quantity" do
    expect(build :item, quantity: nil).to_not be_valid
  end

  it "doesn't need to have a size" do
    expect(create :item, size: nil).to be_valid
  end

  it "doesn't need to have a cost" do
    expect(create :item, cost: nil).to be_valid
  end

  it "doesn't need to have a sales price" do
    expect(create :item, sales_price: nil).to be_valid
  end
end