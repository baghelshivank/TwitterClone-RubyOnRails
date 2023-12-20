class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      # t.string :user
      t.text :post_body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
