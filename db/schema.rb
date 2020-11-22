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

ActiveRecord::Schema.define(version: 2020_11_22_212825) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "activityid"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parkactivities", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_parkactivities_on_activity_id"
    t.index ["park_id"], name: "index_parkactivities_on_park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "parkid"
    t.string "url"
    t.string "fullname"
    t.string "parkcode"
    t.string "description"
    t.float "latitude"
    t.float "longitude"
    t.string "state"
    t.string "phonenumber"
    t.integer "postalcode"
    t.string "city"
    t.string "statecode"
    t.string "addline1"
    t.string "addline2"
    t.string "imageurl"
    t.string "weatherinfo"
    t.string "designation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "parkactivities", "activities"
  add_foreign_key "parkactivities", "parks"
end
