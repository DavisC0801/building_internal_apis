require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
  end

  describe "relationships" do
    it {should have_many(:orders)}
    it {should have_many(:orders).through(:order_items)}
  end
end
