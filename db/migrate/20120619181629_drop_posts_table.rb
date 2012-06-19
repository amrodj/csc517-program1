class DropPostsTable < ActiveRecord::Migration
  def up
  end

  def down
    drop_table :posts
  end
end
