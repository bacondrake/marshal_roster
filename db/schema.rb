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

ActiveRecord::Schema.define(version: 20140805235406) do

  create_table "exams", force: true do |t|
    t.date     "date"
    t.integer  "ntcmarshal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exams", ["ntcmarshal_id"], name: "index_exams_on_ntcmarshal_id"

  create_table "exams_ntcmarshals", id: false, force: true do |t|
    t.integer "exam_id"
    t.integer "ntcmarshal_id"
  end

  create_table "ntcmarshals", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "exam_id"
  end

  add_index "ntcmarshals", ["exam_id"], name: "index_ntcmarshals_on_exam_id"

end
