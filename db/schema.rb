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

ActiveRecord::Schema.define(version: 20140507221853) do

  create_table "checkbooks", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "budget"
    t.decimal  "cost_to_date"
    t.decimal  "savings_overrun"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_id"
  end

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
    t.integer  "country_id"
  end

  add_index "companies", ["company_type_id"], name: "index_companies_on_company_type_id"
  add_index "companies", ["state_id"], name: "index_companies_on_state_id"
  add_index "companies", ["trade_id"], name: "index_companies_on_trade_id"

  create_table "company_departments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "company_id"
    t.string   "f_name"
    t.string   "l_name"
    t.string   "title"
    t.integer  "company_department_id"
    t.string   "address"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip"
    t.integer  "country_id"
    t.string   "mobile_phone"
    t.string   "alt_phone"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["company_department_id"], name: "index_contacts_on_company_department_id"
  add_index "contacts", ["company_id"], name: "index_contacts_on_company_id"
  add_index "contacts", ["country_id"], name: "index_contacts_on_country_id"
  add_index "contacts", ["state_id"], name: "index_contacts_on_state_id"

  create_table "contract_types", force: true do |t|
    t.string   "name"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employments", force: true do |t|
    t.integer  "company_id"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employments", ["company_id"], name: "index_employments_on_company_id"
  add_index "employments", ["contact_id"], name: "index_employments_on_contact_id"

  create_table "job_assignments", force: true do |t|
    t.integer  "job_id"
    t.integer  "company_id"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "number"
    t.string   "precon_number"
    t.string   "building"
    t.string   "address"
    t.string   "city"
    t.integer  "state_id"
    t.string   "zip"
    t.integer  "country_id"
    t.integer  "project_phase_id", default: 1
    t.integer  "project_type_id"
    t.integer  "sachse_group_id"
    t.integer  "sqft"
    t.integer  "union_id"
    t.text     "comments"
    t.datetime "precon_date"
    t.date     "start_date"
    t.date     "turnover_date"
    t.integer  "contract_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "jobs", ["contract_type_id"], name: "index_jobs_on_contract_type_id"
  add_index "jobs", ["country_id"], name: "index_jobs_on_country_id"
  add_index "jobs", ["project_phase_id"], name: "index_jobs_on_project_phase_id"
  add_index "jobs", ["project_type_id"], name: "index_jobs_on_project_type_id"
  add_index "jobs", ["sachse_group_id"], name: "index_jobs_on_sachse_group_id"
  add_index "jobs", ["state_id"], name: "index_jobs_on_state_id"
  add_index "jobs", ["union_id"], name: "index_jobs_on_union_id"

  create_table "project_phases", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "project_role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "role_assignments", ["project_role_id"], name: "index_role_assignments_on_project_role_id"
  add_index "role_assignments", ["user_id"], name: "index_role_assignments_on_user_id"

  create_table "sachse_groups", force: true do |t|
    t.string   "name"
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

  create_table "staff_assignments", force: true do |t|
    t.integer  "job_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_role_id"
  end

  add_index "staff_assignments", ["job_id"], name: "index_staff_assignments_on_job_id"
  add_index "staff_assignments", ["user_id"], name: "index_staff_assignments_on_user_id"

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

  create_table "users", force: true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "employee_number"
    t.string   "title"
    t.string   "mobile_phone"
    t.string   "alt_phone"
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
