class Book < ActiveRecord::Base
  belongs_to :author
  has_one :category
  has_one :rating
  validates :title, :description, :price, presence: true
  validates :price, numericality: true 
  validates :title, length: { in: 2..15 }
  validates :description, length: { in: 10..50 }
  validates :in_stock, inclusion: { in: [true, false] }
end
