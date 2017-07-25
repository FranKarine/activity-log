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

ActiveRecord::Schema.define(version: 20170725234044) do

  create_table "activities", force: :cascade do |t|
    t.date     "date"
    t.text     "description"
    t.text     "important_info"
    t.text     "service"
    t.text     "food_drink"
    t.text     "medication"
    t.integer  "user_id"
    t.integer  "client_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "activities", ["client_id"], name: "index_activities_on_client_id"
  add_index "activities", ["user_id"], name: "index_activities_on_user_id"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.float    "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "extralogs", force: :cascade do |t|
    t.integer  "extra_id"
    t.integer  "log_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "extralogs", ["extra_id"], name: "index_extralogs_on_extra_id"
  add_index "extralogs", ["log_id"], name: "index_extralogs_on_log_id"

  create_table "extras", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "housekeepings", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "logs", force: :cascade do |t|
    t.string   "client"
    t.string   "carg_name"
    t.string   "data"
    t.string   "f_time"
    t.string   "s_time"
    t.string   "fd_breaktime"
    t.string   "am_snack"
    t.string   "fd_lunch"
    t.string   "pm_snack"
    t.string   "dinner"
    t.string   "ngt_nack"
    t.string   "med_breaktime"
    t.string   "med_lunch"
    t.string   "med_eventime"
    t.string   "med_ngtime"
    t.string   "imp_info"
    t.string   "desc"
    t.integer  "extra_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "logs", ["extra_id"], name: "index_logs_on_extra_id"

  create_table "personalhigienes", force: :cascade do |t|
    t.string   "descrpition"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
