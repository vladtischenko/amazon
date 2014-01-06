class Country < ActiveRecord::Base
  validates :name, presence: true, length: { in: 2..15 }
end
