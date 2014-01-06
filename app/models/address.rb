class Address < ActiveRecord::Base
  belongs_to :country
  validates :address, :zipcode, :city, :phone, presence: true
  validates :address, length: { minimum: 5 }
  validates :zipcode, length: { is: 9 }
  validates :city, length: { in: 2..20 }
  validates :phone, length: { in: 11..15 }
end
