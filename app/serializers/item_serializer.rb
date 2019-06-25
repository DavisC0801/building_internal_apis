class ItemSerializer
  include FastJsonapi::ObjectSerializer
  has_many :orders
  attributes :id, :name, :description

  attribute :num_orders do |object|
    object.items.count
  end
end
