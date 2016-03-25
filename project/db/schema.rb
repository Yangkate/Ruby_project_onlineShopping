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

ActiveRecord::Schema.define(version: 20141207123107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: true do |t|
    t.integer  "Country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city_name"
  end

  add_index "cities", ["Country_id"], name: "index_cities_on_Country_id", using: :btree

  create_table "countries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "country_name"
  end

  create_table "promotion_types", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "Store_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "discount_code"
  end

  add_index "promotions", ["Store_id"], name: "index_promotions_on_Store_id", using: :btree

  create_table "reviews", force: true do |t|
    t.string   "comment"
    t.integer  "ShoppingMall_id"
    t.integer  "User_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["ShoppingMall_id"], name: "index_reviews_on_ShoppingMall_id", using: :btree
  add_index "reviews", ["User_id"], name: "index_reviews_on_User_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "Title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_malls", force: true do |t|
    t.string   "shopping_mall_name"
    t.string   "phone_number"
    t.string   "address"
    t.integer  "City_id"
    t.integer  "Country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "User_id"
    t.string   "link"
  end

  add_index "shopping_malls", ["City_id"], name: "index_shopping_malls_on_City_id", using: :btree
  add_index "shopping_malls", ["Country_id"], name: "index_shopping_malls_on_Country_id", using: :btree
  add_index "shopping_malls", ["User_id"], name: "index_shopping_malls_on_User_id", using: :btree

  create_table "store_categories", force: true do |t|
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.string   "store_name"
    t.string   "store_contact_phone"
    t.string   "store_email"
    t.string   "description"
    t.integer  "ShoppingMall_id"
    t.integer  "StoreCategory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "location"
  end

  add_index "stores", ["ShoppingMall_id"], name: "index_stores_on_ShoppingMall_id", using: :btree
  add_index "stores", ["StoreCategory_id"], name: "index_stores_on_StoreCategory_id", using: :btree

  create_table "tests", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone_number"
    t.integer  "City_id"
    t.integer  "Country_id"
    t.integer  "Role_id"
    t.integer  "old_role"
  end

  add_index "users", ["City_id"], name: "index_users_on_City_id", using: :btree
  add_index "users", ["Country_id"], name: "index_users_on_Country_id", using: :btree
  add_index "users", ["Role_id"], name: "index_users_on_Role_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
