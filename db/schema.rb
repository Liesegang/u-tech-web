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

ActiveRecord::Schema.define(version: 20170323084416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_datetimes", force: :cascade do |t|
    t.datetime "start_time", null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "end_time",   null: false
    t.string   "title",      null: false
    t.index ["event_id"], name: "index_event_datetimes_on_event_id", using: :btree
  end

  create_table "event_docs", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "desc",       null: false
    t.text     "url",        null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_docs_on_event_id", using: :btree
    t.index ["title"], name: "index_event_docs_on_title", using: :btree
  end

  create_table "event_infos", force: :cascade do |t|
    t.string   "message",    null: false
    t.datetime "due",        null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_infos_on_event_id", using: :btree
  end

  create_table "event_long_descs", force: :cascade do |t|
    t.text     "desc",       null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_long_descs_on_event_id", using: :btree
  end

  create_table "event_schedules", force: :cascade do |t|
    t.time     "start_time", null: false
    t.time     "end_time",   null: false
    t.string   "day",        null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_schedules_on_event_id", using: :btree
  end

  create_table "event_short_descs", force: :cascade do |t|
    t.text     "desc",       null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_short_descs_on_event_id", using: :btree
  end

  create_table "event_textbooks", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "url",        null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_textbooks_on_event_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "year",       null: false
    t.string   "kind",       null: false
    t.date     "start_date", null: false
    t.date     "end_date",   null: false
    t.string   "image",      null: false
    t.index ["name"], name: "index_events_on_name", using: :btree
  end

  create_table "members", force: :cascade do |t|
    t.string   "first_name",      limit: 20, null: false
    t.string   "last_name",       limit: 20, null: false
    t.string   "email",                      null: false
    t.string   "university",                 null: false
    t.integer  "grade",           limit: 2,  null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "nickname",                   null: false
    t.string   "major",                      null: false
    t.string   "password_digest",            null: false
    t.index ["email"], name: "index_members_on_email", using: :btree
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "member_id",  null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_participations_on_event_id", using: :btree
    t.index ["member_id"], name: "index_participations_on_member_id", using: :btree
  end

  add_foreign_key "event_datetimes", "events"
  add_foreign_key "event_docs", "events"
  add_foreign_key "event_infos", "events"
  add_foreign_key "event_long_descs", "events"
  add_foreign_key "event_schedules", "events"
  add_foreign_key "event_short_descs", "events"
  add_foreign_key "event_textbooks", "events"
end
