class RenameColumnInBooks < ActiveRecord::Migration
  def change
    rename_column :books, :author, :book_author
  end
end
