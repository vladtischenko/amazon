class RenameColumnInCreditCards < ActiveRecord::Migration
  def change
    rename_column :credit_cards, :lasname, :lastname
  end
end
