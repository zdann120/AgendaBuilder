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

ActiveRecord::Schema.define(version: 20161130005752) do

  create_table "events", force: :cascade do |t|
    t.string   "token"
    t.string   "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "recurrence_rule"
    t.index ["token"], name: "index_events_on_token", unique: true
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "slot_id"
    t.string   "confirmation_code"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["confirmation_code"], name: "index_reservations_on_confirmation_code", unique: true
    t.index ["slot_id"], name: "index_reservations_on_slot_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "slots", force: :cascade do |t|
    t.string   "uid"
    t.integer  "event_id"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.index ["event_id"], name: "index_slots_on_event_id"
    t.index ["uid"], name: "index_slots_on_uid", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
