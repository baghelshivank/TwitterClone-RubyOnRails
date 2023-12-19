class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.integer :phone
      t.string :bio
      t.binary :profile_pic
      t.binary :cover_pic
      t.string :location
      t.string :website
      t.boolean :user_normal, default: true

      t.timestamps
    end
  end
end
