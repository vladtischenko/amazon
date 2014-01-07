 class Customer < ActiveRecord::Base

  has_many :orders

  validates :firstname, :lastname, :email, :password, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  before_save :compare_email_password

  protected
  def compare_email_password
    email != password
  end
end
