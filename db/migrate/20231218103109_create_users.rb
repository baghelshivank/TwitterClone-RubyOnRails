class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :phone
      t.date :dob
      t.string :username
      t.string :bio
      t.binary :profile_pic
      t.binary :cover_pic
      t.string :location
      t.string :website
      t.boolean :user_normal

      t.timestamps
    end
  end
end
