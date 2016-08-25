class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.timestamps
      t.integer :post_id  # foreign key!!! to relate back to post
    end
  end
end
