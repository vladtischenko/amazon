class Order < ActiveRecord::Base
  belongs_to :customer
  validates :totalprice, :bill_address, :ship_address, presence: true
  validates :state, inclusion: { in: [true, false] }
  #need to test date :completed_at
end
