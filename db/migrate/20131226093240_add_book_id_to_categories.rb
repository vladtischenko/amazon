class AddBookIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :book_id, :integer
    add_index :categories, :book_id
  end
end
