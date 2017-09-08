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

ActiveRecord::Schema.define(version: 20170804211837) do

  create_table "calenders", force: :cascade do |t|
    t.string  "month"
    t.integer "date"
    t.string  "entry"
    t.string  "image_name"
    t.binary  "image_contents"
  end

  create_table "fitbit_data", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.string   "date"
    t.string   "resource_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "fitbit_data", ["date", "resource_type"], name: "index_fitbit_data_on_date_and_resource_type"
  add_index "fitbit_data", ["user_id"], name: "index_fitbit_data_on_user_id"

  create_table "identities", force: :cascade do |t|
    t.string   "uid"
    t.string   "provider"
    t.string   "access_token"
    t.string   "refresh_token"
    t.integer  "expires_at"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "timezone"
  end

  create_table "journals", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.string "hero"
    t.string "pic_name"
    t.string "caption"
    t.binary "pic_data"
    t.string "workout"
  end

  create_table "stats", force: :cascade do |t|
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
