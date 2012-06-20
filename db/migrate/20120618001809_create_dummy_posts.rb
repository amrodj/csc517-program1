class CreateDummyPosts < ActiveRecord::Migration
  def change
    create_table :dummy_posts do |t|
      t.string :post
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
