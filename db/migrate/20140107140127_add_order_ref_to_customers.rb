class AddOrderRefToCustomers < ActiveRecord::Migration
  def change
    add_reference :customers, :order, index: true
  end
end
