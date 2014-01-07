class Author < ActiveRecord::Base
  validates :firstname, :lastname, presence: true, length: { in: 2..20 }
  has_many :books
end
