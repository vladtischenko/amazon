 class Customer < ActiveRecord::Base

  has_many :orders

  validates :firstname, :lastname, :email, :password, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  before_save :compare_email_password

  def rating(values = {})
    if self.orders.each{|order| order.order_items.include?(values[:book])}
      values[:book].rating =
        Rating.create(text: values[:text], rating: values[:rating]) unless values[:book].rating
      end
    end
  end

  def order(values = {})
    if values[:book].in_stoke
      order = self.orders.create(bill_address: values[:bill_address],
       ship_address: values[:ship_address])
      order.order_items << OrderItem.create(values[:book])
    end
  end

  protected
  def compare_email_password
    email != password
  end
end
