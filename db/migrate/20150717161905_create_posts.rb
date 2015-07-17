class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :body
      t.integer :user_id

      t.timestamps
    end
    create_table :comments do |t|
      t.string :body
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
    create_table :references do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
