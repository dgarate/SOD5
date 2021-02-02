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

ActiveRecord::Schema.define(version: 2021_01_31_150856) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conflicts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "end_date"
    t.bigint "cycle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cycle_id"], name: "index_conflicts_on_cycle_id"
  end

  create_table "cycles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "responsibilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "resp_type"
    t.date "end_date"
    t.bigint "cycle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cycle_id"], name: "index_responsibilities_on_cycle_id"
  end

  create_table "responsibility_conflicts", force: :cascade do |t|
    t.bigint "responsibility_id", null: false
    t.bigint "conflict_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conflict_id"], name: "index_responsibility_conflicts_on_conflict_id"
    t.index ["responsibility_id"], name: "index_responsibility_conflicts_on_responsibility_id"
  end

  create_table "user_accesses", force: :cascade do |t|
    t.string "username"
    t.string "responsibility"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_conflicts", force: :cascade do |t|
    t.bigint "user_access_id", null: false
    t.bigint "conflict_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conflict_id"], name: "index_user_conflicts_on_conflict_id"
    t.index ["user_access_id"], name: "index_user_conflicts_on_user_access_id"
  end

  create_table "user_responsibilities", force: :cascade do |t|
    t.bigint "user_access_id", null: false
    t.bigint "responsibility_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["responsibility_id"], name: "index_user_responsibilities_on_responsibility_id"
    t.index ["user_access_id"], name: "index_user_responsibilities_on_user_access_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.date "end_date"
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "provider"
    t.string "uid"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "conflicts", "cycles"
  add_foreign_key "responsibilities", "cycles"
  add_foreign_key "responsibility_conflicts", "conflicts"
  add_foreign_key "responsibility_conflicts", "responsibilities"
  add_foreign_key "user_conflicts", "conflicts"
  add_foreign_key "user_conflicts", "user_accesses"
  add_foreign_key "user_responsibilities", "responsibilities"
  add_foreign_key "user_responsibilities", "user_accesses"
  add_foreign_key "users", "companies"
end
