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

ActiveRecord::Schema.define(version: 20140414223932) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.integer  "company_type_id"
    t.integer  "trade_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["company_type_id"], name: "index_companies_on_company_type_id"
  add_index "companies", ["state_id"], name: "index_companies_on_state_id"
  add_index "companies", ["trade_id"], name: "index_companies_on_trade_id"

  create_table "company_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialties", force: true do |t|
    t.integer  "company_id"
    t.integer  "trade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "specialties", ["company_id"], name: "index_specialties_on_company_id"
  add_index "specialties", ["trade_id"], name: "index_specialties_on_trade_id"

  create_table "states", force: true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trades", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unions", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
