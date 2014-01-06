class Rating < ActiveRecord::Base
  belongs_to :book
  belongs_to :customer
  validates :rating, :text, presence: true
  validates :rating, numericality: true, length: { in: 2..3 }
  validates :text, length: { in: 5..25 }
end
