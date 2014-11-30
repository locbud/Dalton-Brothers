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

ActiveRecord::Schema.define(version: 20141129122613) do

  create_table "users", force: true do |t|
    t.string   "email",                        null: false
    t.string   "crypted_password",             null: false
    t.string   "salt",                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username_attribute_name"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"

  create_table "what_fixed_to_dos", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "scheduled_time"
    t.integer  "choice_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "what_love_to_dos", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "deadline"
    t.integer  "number_of_items"
    t.string   "user_estimated_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "what_optional_to_dos", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "funtionalities"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "what_should_avoids", force: true do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
