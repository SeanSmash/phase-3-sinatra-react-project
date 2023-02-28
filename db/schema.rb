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

ActiveRecord::Schema.define(version: 2023_02_28_045918) do

  create_table "categories", force: :cascade do |t|
    t.string "category"
  end

  create_table "exercise_categories", force: :cascade do |t|
    t.integer "category_id"
    t.integer "exercise_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "exercise"
    t.boolean "for_reps"
    t.boolean "for_time"
    t.boolean "for_weight"
  end

  create_table "personal_records", force: :cascade do |t|
    t.integer "user_profile_id"
    t.integer "exercise_id"
    t.string "exercise"
    t.string "metric"
    t.date "date_created"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "user_name"
    t.string "first_name"
    t.string "last_name"
    t.string "birthdate"
    t.string "gender"
  end

end
