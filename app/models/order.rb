class Order < ActiveRecord::Base
  has_many :order_items
  belongs_to :customer
  validates :bill_address, :ship_address, presence: true
  validates :state, inclusion: { in: [true, false] }

  before_save :plus_price

  def plus_price
    totalprice = self.order_items.map{|item| item.book.price}.sum
  end
end
