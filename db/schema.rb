# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_05_005623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["restaurant_id"], name: "index_comments_on_restaurant_id"
  end

  create_table "congestions", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.integer "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_congestions_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.string "restaurant_name"
    t.string "tel"
    t.string "address"
    t.string "opening_hours"
    t.string "calendar"
    t.string "restaurant_url"
    t.float "lat"
    t.float "lng"
    t.string "latlng"
    t.integer "sub"
    t.string "sub_name"
    t.integer "are"
    t.string "are_name"
    t.integer "pre"
    t.string "pre_name"
    t.integer "lbgt"
    t.string "lbgt_name"
    t.integer "dbgt"
    t.string "dbgt_name"
    t.integer "lcat"
    t.string "lcat_name"
    t.integer "main_cat"
    t.string "main_cat_name"
    t.string "cats"
    t.string "cats_name"
    t.string "purs"
    t.string "purs_name"
    t.integer "seats_num"
    t.integer "smoking_type"
    t.integer "restaurant_report_level"
    t.integer "restaurant_like_level"
    t.integer "restaurant_wannago_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
