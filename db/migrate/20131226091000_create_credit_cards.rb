class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.integer :number
      t.integer :cvv
      t.string :firstname
      t.string :lasname
      t.string :expiration_month
      t.integer :expiration_year
      t.references :customer, index: true
      t.references :order, index: true

      t.timestamps
    end
  end
end
