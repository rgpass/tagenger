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

ActiveRecord::Schema.define(version: 20131220152743) do

  create_table "messages", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.string   "tag_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "tag_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_tags", force: true do |t|
    t.integer  "user_id"
    t.integer  "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_tags", ["tag_id"], name: "index_user_tags_on_tag_id"
  add_index "user_tags", ["user_id", "tag_id"], name: "index_user_tags_on_user_id_and_tag_id", unique: true
  add_index "user_tags", ["user_id"], name: "index_user_tags_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_initial"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "tndcheck"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
