class CreateBlogs < ActiveRecord::Migration
  create_table :blogs do |t|
    t.string :title
    t.text :content

    t.timestamps
  end
end
