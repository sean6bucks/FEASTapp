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

ActiveRecord::Schema.define(version: 20150708040905) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_categories", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "client"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "proccesses"
    t.string   "description"
    t.boolean  "is_published"
    t.string   "displayname"
    t.string   "thumbnail_file_name"
    t.string   "thumbnail_content_type"
    t.integer  "thumbnail_file_size"
    t.datetime "thumbnail_updated_at"
    t.string   "jumbotron_file_name"
    t.string   "jumbotron_content_type"
    t.integer  "jumbotron_file_size"
    t.datetime "jumbotron_updated_at"
    t.string   "jumbotron_detail_file_name"
    t.string   "jumbotron_detail_content_type"
    t.integer  "jumbotron_detail_file_size"
    t.datetime "jumbotron_detail_updated_at"
    t.string   "half_detail1_file_name"
    t.string   "half_detail1_content_type"
    t.integer  "half_detail1_file_size"
    t.datetime "half_detail1_updated_at"
    t.string   "half_detail2_file_name"
    t.string   "half_detail2_content_type"
    t.integer  "half_detail2_file_size"
    t.datetime "half_detail2_updated_at"
    t.string   "half_detail_square1_file_name"
    t.string   "half_detail_square1_content_type"
    t.integer  "half_detail_square1_file_size"
    t.datetime "half_detail_square1_updated_at"
    t.string   "half_detail_square2_file_name"
    t.string   "half_detail_square2_content_type"
    t.integer  "half_detail_square2_file_size"
    t.datetime "half_detail_square2_updated_at"
    t.string   "thirds_detail1_file_name"
    t.string   "thirds_detail1_content_type"
    t.integer  "thirds_detail1_file_size"
    t.datetime "thirds_detail1_updated_at"
    t.string   "thirds_detail2_file_name"
    t.string   "thirds_detail2_content_type"
    t.integer  "thirds_detail2_file_size"
    t.datetime "thirds_detail2_updated_at"
    t.string   "thirds_detail3_file_name"
    t.string   "thirds_detail3_content_type"
    t.integer  "thirds_detail3_file_size"
    t.datetime "thirds_detail3_updated_at"
    t.boolean  "is_slide"
    t.string   "video_url"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
