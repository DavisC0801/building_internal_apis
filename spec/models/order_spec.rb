require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "validations" do
    it {should validate_presence_of :order_number}
  end
  describe "relationships" do
    it {should have_many(:order_items)}
    it {should have_many(:items).through(:order_items)}
  end
end
