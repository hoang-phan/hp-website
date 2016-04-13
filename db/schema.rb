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

ActiveRecord::Schema.define(version: 20160411071635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "member_projects", force: :cascade do |t|
    t.integer  "member_id"
    t.integer  "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "member_projects", ["member_id"], name: "index_member_projects_on_member_id", using: :btree
  add_index "member_projects", ["project_id"], name: "index_member_projects_on_project_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "members", ["name"], name: "index_members_on_name", using: :btree
  add_index "members", ["role"], name: "index_members_on_role", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "start_month", default: 1
    t.integer  "start_year",  default: 2000
  end

  add_index "projects", ["name"], name: "index_projects_on_name", using: :btree
  add_index "projects", ["start_month"], name: "index_projects_on_start_month", using: :btree
  add_index "projects", ["start_year"], name: "index_projects_on_start_year", using: :btree

  add_foreign_key "member_projects", "members", on_delete: :cascade
  add_foreign_key "member_projects", "projects", on_delete: :cascade
end
