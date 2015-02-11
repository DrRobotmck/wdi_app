# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150211151002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: true do |t|
    t.string   "name"
    t.string   "topic"
    t.float    "comfortability"
    t.float    "completeness"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
  end

  add_index "assignments", ["student_id"], name: "index_assignments_on_student_id", using: :btree

  create_table "cohorts", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "campus"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cohorts_instructors", id: false, force: true do |t|
    t.integer "cohort_id",     null: false
    t.integer "instructor_id", null: false
  end

  add_index "cohorts_instructors", ["cohort_id", "instructor_id"], name: "index_cohorts_instructors_on_cohort_id_and_instructor_id", using: :btree
  add_index "cohorts_instructors", ["instructor_id", "cohort_id"], name: "index_cohorts_instructors_on_instructor_id_and_cohort_id", using: :btree

  create_table "instructors", force: true do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "github_username", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name",      null: false
    t.string   "last_name",       null: false
    t.string   "github_username", null: false
    t.integer  "github_userid",   null: false
    t.string   "email",           null: false
    t.date     "birthday",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cohort_id"
  end

  add_index "students", ["cohort_id"], name: "index_students_on_cohort_id", using: :btree

end
