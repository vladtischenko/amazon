class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :totalprice
      t.boolean :state
      t.date :completed_at
      t.string :bill_address
      t.string :ship_address
      t.references :customer, index: true

      t.timestamps
    end
  end
end
