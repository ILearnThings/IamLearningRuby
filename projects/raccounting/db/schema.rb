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

ActiveRecord::Schema.define(version: 20170125044326) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
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
    t.integer  "company_id"
    t.index ["company_id"], name: "index_customers_on_company_id"
  end

  create_table "invoice_items", force: :cascade do |t|
    t.integer  "quantity"
    t.string   "unit"
    t.integer  "product_id"
    t.integer  "stock_movement_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.boolean  "do_stock_tracking"
    t.integer  "amount"
    t.string   "purchase_sales_unit"
    t.decimal  "purchase_price"
    t.decimal  "sales_price"
    t.integer  "vat"
    t.integer  "company_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["company_id"], name: "index_products_on_company_id"
  end

  create_table "stock_movements", force: :cascade do |t|
    t.string   "description"
    t.string   "address"
    t.string   "town"
    t.string   "city"
    t.datetime "date_of_issuance"
    t.string   "waybill_number"
    t.datetime "actual_date_of_shipment"
    t.integer  "supplier_id"
    t.boolean  "is_entry"
    t.integer  "company_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["company_id"], name: "index_stock_movements_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "company_id"
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
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
