class Order < ApplicationRecord
  validates_presence_of :order_number
  has_many :order_items
  has_many :items, through: :order_items
end
