class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :text
      t.float :rating
      t.references :book, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
