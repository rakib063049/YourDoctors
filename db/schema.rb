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

ActiveRecord::Schema.define(version: 20150114084432) do

  create_table "availabilities", force: true do |t|
    t.integer  "hospital_id"
    t.string   "start_at"
    t.string   "end_at"
    t.string   "day_off"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: true do |t|
    t.string   "name"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitals", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "thana_id"
    t.integer  "district_id"
    t.string   "cuntry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "division_id"
    t.string   "phone"
    t.string   "email"
    t.integer  "hospital_authority_id"
  end

  create_table "images", force: true do |t|
    t.integer  "user_id"
    t.integer  "hospital_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: true do |t|
    t.float    "new_patient"
    t.float    "old_patient"
    t.integer  "doctor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "ratings", force: true do |t|
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.float    "number"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "thanas", force: true do |t|
    t.string   "name"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "degrees"
    t.text     "education"
    t.string   "specialist"
    t.string   "age"
    t.string   "email",                  default: "", null: false
    t.string   "phone"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "thana_id"
    t.integer  "district_id"
    t.string   "cuntry"
    t.text     "about_me"
    t.string   "type"
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
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "division_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
