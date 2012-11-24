class CreateBooksCategoryTable < ActiveRecord::Migration
  def up
    create_table 'books_categories', :id => false do |t|
      t.integer :book_id
      t.integer :category_id
    end
  end

  def down
    drop_table 'books_categories'
  end
end
