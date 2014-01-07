class AddBookRefToAuthors < ActiveRecord::Migration
  def change
    add_reference :authors, :book, index: true
  end
end
