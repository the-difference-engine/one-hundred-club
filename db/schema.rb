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

ActiveRecord::Schema.define(version: 20160715015945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donations", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "title"
    t.string   "middle_name"
    t.string   "suffix"
    t.string   "country"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.string   "phone"
    t.integer  "zip_code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "amount"
  end

  create_table "events", force: :cascade do |t|
    t.string   "image"
    t.string   "title"
    t.text     "description"
    t.datetime "datetime"
    t.string   "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fallen_heros", force: :cascade do |t|
    t.string   "rank"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "department"
    t.date     "date_deceased"
    t.text     "description"
    t.string   "image_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "middle_name"
    t.string   "suffix"
    t.string   "company"
    t.string   "job_title"
    t.string   "name_on_card"
    t.string   "other_name_1"
    t.string   "other_name_2"
    t.string   "other_name_3"
    t.string   "country"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.string   "phone"
    t.string   "how_they_heard"
    t.string   "if_other"
    t.integer  "zip_code"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
