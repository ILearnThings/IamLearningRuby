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

ActiveRecord::Schema.define(version: 20170111204729) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "userid"
    t.string   "company_title"
    t.string   "short_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "iban"
    t.string   "address"
    t.integer  "customer_type"
    t.string   "nid"
    t.string   "tax_office"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
