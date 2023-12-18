# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_18_103109) do
  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "phone"
    t.string "email"
    t.date "dob"
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.binary "profile_pic"
    t.binary "cover_pic"
    t.string "location"
    t.string "website"
    t.boolean "user_normal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end