class ChangeDataTypeCreditCards < ActiveRecord::Migration
  def change
    remove_column :credit_cards, :number
    add_column :credit_cards, :number, :decimal
  end
end
