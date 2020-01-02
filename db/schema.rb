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

ActiveRecord::Schema.define(version: 2020_01_02_201115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "house_kings", force: :cascade do |t|
    t.bigint "king_id", null: false
    t.bigint "house_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["house_id"], name: "index_house_kings_on_house_id"
    t.index ["king_id"], name: "index_house_kings_on_king_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "king_id"
    t.integer "power"
    t.index ["king_id"], name: "index_houses_on_king_id"
  end

  create_table "kings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "house_kings", "houses"
  add_foreign_key "house_kings", "kings"
  add_foreign_key "houses", "kings"
end
