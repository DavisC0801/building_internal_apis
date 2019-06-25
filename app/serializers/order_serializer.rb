class OrderSerializer
  include FastJsonapi::ObjectSerializer
  has_many :items
  attributes :id, :order_number

  attribute :num_items do |object|
    object.items.count
  end

  attribute :greeting do
    "HELLO FRIENDS"
  end
end
