class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :user
      t.string :title
      t.text :post
      t.integer :votes

      t.timestamps
    end
  end
end
