class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :title
      t.string :author
      t.text :blog_entry

      t.timestamps null: false
    end
  end
end
