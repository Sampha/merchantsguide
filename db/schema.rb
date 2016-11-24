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

ActiveRecord::Schema.define(version: 20161124133744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alien_numerals", force: :cascade do |t|
    t.string   "alien"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calculations", force: :cascade do |t|
    t.integer  "value_one"
    t.integer  "value_two"
    t.integer  "value_three"
    t.integer  "value_four"
    t.string   "value_one_name"
    t.string   "value_two_name"
    t.string   "value_three_name"
    t.string   "value_four_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "mineral_calculations", force: :cascade do |t|
    t.integer  "alien_one"
    t.string   "alien_one_name"
    t.integer  "alien_two"
    t.string   "alien_two_name"
    t.integer  "mineral"
    t.string   "mineral_name"
    t.integer  "total_value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "minerals", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.integer  "alien_value_one"
    t.integer  "alien_value_two"
    t.integer  "total"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "sum"
  end

  create_table "roman_numerals", force: :cascade do |t|
    t.string   "numeral"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
