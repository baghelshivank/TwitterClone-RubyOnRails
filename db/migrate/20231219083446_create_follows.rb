class CreateFollows < ActiveRecord::Migration[7.1]
  def change
    create_table :follows do |t|
      t.integer "user_id"
      t.integer "following_id"
      t.timestamps
    end
  end
end
