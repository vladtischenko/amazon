class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.float :price
      t.boolean :in_stock
      t.references :author, index: true

      t.timestamps
    end
  end
end
