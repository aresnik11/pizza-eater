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

ActiveRecord::Schema.define(version: 2019_09_04_154740) do

  create_table "patrons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pizzas", force: :cascade do |t|
    t.string "name"
    t.string "cheese"
    t.string "sauce"
    t.string "topping_one"
    t.string "topping_two"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "waiters", force: :cascade do |t|
    t.string "name"
    t.integer "pizza_id", null: false
    t.integer "patron_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patron_id"], name: "index_waiters_on_patron_id"
    t.index ["pizza_id"], name: "index_waiters_on_pizza_id"
  end

  add_foreign_key "waiters", "patrons"
  add_foreign_key "waiters", "pizzas"
end
