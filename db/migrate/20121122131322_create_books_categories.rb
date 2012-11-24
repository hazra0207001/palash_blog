class CreateBooksCategories < ActiveRecord::Migration
  def up
    create_table 'books_categories', :id => false do |t|
      t.integer :book_ids
      t.integer :category_ids
    end
  end

  def down
    drop_table 'books_categories'
  end
end
