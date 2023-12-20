class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      # t.references :user, null: false, foreign_key: true
      # t.references :post, null: false, foreign_key: true
      # t.references :reply, null: false, foreign_key: true

      t.references :user, null: false, foreign_key: true
      t.references :likeable, polymorphic: true, null: false

      #To ensure that users can like anything likeable (associated with likes) but that they can only add one like to each likeable. Adding this line to the CreateLikes migration we just generated should do the trick and ensure only unique combinations of user, likeable_type and likeable_id can be added to the database.
      t.index [:user_id, :likeable_type, :likeable_id ], unique: true

      t.timestamps
    end
  end
end
