class CreditCard < ActiveRecord::Base
  belongs_to :customer
  belongs_to :order
  validates :number, numericality: { only_integer: true }, presence: true
  validates :cvv, numericality: { only_integer: true }, presence: true
  # validates :number, length: { is: 16 }
  validates :cvv, length: { is: 3 }
  validates :firstname, :lastname, presence: true, length: { in: 2..10 }
  validates :expiration_month, presence: true, length: { in: 3..8 }
  validates :expiration_year, numericality: { only_integer: true }, length: { is: 4 }
end
