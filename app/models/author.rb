class Author < ActiveRecord::Base
  validates :firstname, :lastname, presence: true, length: { in: 2..20 }
end
