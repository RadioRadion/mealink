# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_02_155525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cooker_id"
    t.index ["cooker_id"], name: "index_comments_on_cooker_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "cookers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_cookers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_cookers_on_reset_password_token", unique: true
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_id"], name: "index_ingredients_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "typology"
    t.integer "price"
    t.integer "rating"
    t.integer "stock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cooker_id"
    t.string "name"
    t.index ["cooker_id"], name: "index_meals_on_cooker_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "rating"
    t.bigint "meal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["meal_id"], name: "index_notes_on_meal_id"
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "number"
    t.bigint "meal_id", null: false
    t.bigint "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meal_id"], name: "index_order_items_on_meal_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cooker_id"
    t.index ["cooker_id"], name: "index_orders_on_cooker_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "address"
    t.string "distance"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "cookers"
  add_foreign_key "comments", "users"
  add_foreign_key "ingredients", "meals"
  add_foreign_key "meals", "cookers"
  add_foreign_key "notes", "meals"
  add_foreign_key "notes", "users"
  add_foreign_key "order_items", "meals"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "cookers"
  add_foreign_key "orders", "users"
  add_foreign_key "searches", "users"
end
