class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :blog_id
      t.text :blog_comment

      t.timestamps
    end
  end
end
