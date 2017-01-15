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

ActiveRecord::Schema.define(version: 20161228140135) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.string   "medically_stable"
    t.string   "rehab_in_short_term"
    t.string   "discharge_destination"
    t.string   "requires_level_of_nursing_care"
    t.string   "housing_issues"
    t.string   "under_age_18"
    t.string   "mental_health_problems"
    t.string   "requires_respite_care"
    t.string   "requires_long_term_placement"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "beds", force: :cascade do |t|
    t.string   "hospital_name"
    t.string   "hospital_location"
    t.string   "beds_available"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "patient_no"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "diagnosis"
    t.string   "assesment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pocs", force: :cascade do |t|
    t.string   "home_care"
    t.string   "meals_on_wheels"
    t.string   "frozen_meals"
    t.string   "day_care"
    t.string   "day_hospital"
    t.string   "district_nurse"
    t.string   "physio"
    t.string   "residential_home"
    t.string   "nursing_home"
    t.string   "other"
    t.string   "notes"
    t.date     "doa"
    t.date     "dod"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
