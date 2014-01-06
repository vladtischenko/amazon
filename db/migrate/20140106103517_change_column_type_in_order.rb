class ChangeColumnTypeInOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :totalprice
    add_column :orders, :totalprice, :float
  end
end
