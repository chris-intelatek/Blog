class AddBlogToComments < ActiveRecord::Migration
  def change
    add_column :comments, :blogpost_id, :integer
  end
end
