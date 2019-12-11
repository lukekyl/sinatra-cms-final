# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_10_020138) do

  create_table "comments", force: :cascade do |t|
    t.string "owner_id"
    t.string "plant_id"
    t.string "reply"
  end

  create_table "owner_plants", force: :cascade do |t|
    t.integer "owner_id"
    t.integer "plant_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password_digest"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "family"
    t.string "description"
    t.string "care"
    t.integer "creator_id"
  end

end
