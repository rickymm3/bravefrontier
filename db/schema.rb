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

ActiveRecord::Schema.define(version: 20140502234839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bb_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "brave_bursts", force: true do |t|
    t.string   "name"
    t.integer  "num_hits"
    t.string   "element_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.boolean  "is_super"
    t.integer  "bb_type_id"
  end

  add_index "brave_bursts", ["slug"], name: "index_brave_bursts_on_slug", unique: true, using: :btree

  create_table "elements", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "end_date"
    t.text     "description"
    t.string   "image_loc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subject"
    t.datetime "start_date"
    t.integer  "news_id"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "guides", force: true do |t|
    t.string   "subject"
    t.string   "body"
    t.integer  "user_id"
    t.integer  "approved"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", force: true do |t|
    t.integer  "unit_id"
    t.integer  "evolve_unit_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "heading"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_loc"
  end

  create_table "profiles", force: true do |t|
    t.string   "username"
    t.string   "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quests", force: true do |t|
    t.string   "name"
    t.integer  "world_id"
    t.integer  "mission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tools", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "no"
    t.integer  "element_id"
    t.integer  "rarity_id"
    t.integer  "base_hp"
    t.integer  "base_atk"
    t.integer  "base_def"
    t.integer  "base_rec"
    t.integer  "ls_id"
    t.integer  "bb_id"
    t.integer  "numhits"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "realname"
    t.integer  "cost"
    t.integer  "max_lvl"
    t.integer  "max_hp"
    t.integer  "max_atk"
    t.integer  "max_def"
    t.integer  "max_rec"
    t.integer  "a_hp"
    t.integer  "a_rec"
    t.integer  "b_atk"
    t.integer  "b_def"
    t.integer  "g_atk"
    t.integer  "g_def"
    t.integer  "o_hp"
    t.integer  "o_rec"
    t.string   "sbb"
    t.string   "sbb_hits"
    t.string   "bb_refill"
    t.integer  "bb_hits"
  end

  add_index "units", ["slug"], name: "index_units_on_slug", unique: true, using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
