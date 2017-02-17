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

ActiveRecord::Schema.define(version: 20170217074616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: :cascade do |t|
    t.string   "first_name", limit: 20, null: false
    t.string   "last_name",  limit: 20, null: false
    t.string   "email",                 null: false
    t.string   "university",            null: false
    t.integer  "grade",      limit: 2,  null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["email"], name: "index_members_on_email", using: :btree
  end

  create_table "members_seminars", force: :cascade do |t|
    t.integer  "member_id",  null: false
    t.integer  "seminar_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["member_id", "seminar_id"], name: "index_members_seminars_on_member_id_and_seminar_id", unique: true, using: :btree
  end

  create_table "seminar_datetimes", force: :cascade do |t|
    t.datetime "start_time", null: false
    t.integer  "seminar_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "end_time",   null: false
    t.index ["seminar_id"], name: "index_seminar_datetimes_on_seminar_id", using: :btree
  end

  create_table "seminar_descs", force: :cascade do |t|
    t.text     "desc",       null: false
    t.integer  "seminar_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seminar_id"], name: "index_seminar_descs_on_seminar_id", using: :btree
  end

  create_table "seminar_docs", force: :cascade do |t|
    t.string   "title",               null: false
    t.text     "desc",                null: false
    t.text     "url",                 null: false
    t.integer  "seminar_datetime_id", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["seminar_datetime_id"], name: "index_seminar_docs_on_seminar_datetime_id", using: :btree
    t.index ["title"], name: "index_seminar_docs_on_title", using: :btree
  end

  create_table "seminars", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_seminars_on_name", using: :btree
  end

  add_foreign_key "seminar_datetimes", "seminars"
  add_foreign_key "seminar_descs", "seminars"
  add_foreign_key "seminar_docs", "seminars", column: "seminar_datetime_id"
end
