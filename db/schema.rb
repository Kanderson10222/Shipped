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

ActiveRecord::Schema.define(version: 2018_04_25_193633) do

  create_table "boats", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "capacity"
    t.string "location"
    t.string "destination"
    t.integer "boat_id"
    t.integer "user_id"
    t.integer "location_id"
    t.integer "origin_id"
    t.integer "destination_id"
    t.string "avatar"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "boats_jobs", id: false, force: :cascade do |t|
    t.integer "boat_id", null: false
    t.integer "job_id", null: false
    t.index ["boat_id", "job_id"], name: "index_boats_jobs_on_boat_id_and_job_id"
    t.index ["job_id", "boat_id"], name: "index_boats_jobs_on_job_id_and_boat_id"
  end

  create_table "boats_jobs_users", id: false, force: :cascade do |t|
    t.integer "boat_id"
    t.integer "user_id"
    t.integer "job_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "boat_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id", "job_id"], name: "index_bookings_on_boat_id_and_job_id", unique: true
    t.index ["boat_id"], name: "index_bookings_on_boat_id"
    t.index ["job_id"], name: "index_bookings_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "origin"
    t.string "destination"
    t.integer "cost"
    t.integer "job_id"
    t.integer "location_id"
    t.integer "capacity"
    t.integer "user_id"
    t.integer "origin_id"
    t.integer "destination_id"
    t.string "description"
    t.string "name"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "username"
    t.string "avatar"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
