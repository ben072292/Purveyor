
ActiveRecord::Schema.define(version: 20131203170358) do

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "usertype"
  end

  create_table "customerforms", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "nameofbusiness"
    t.string   "contactnumber"
    t.string   "contactemail"
    t.string   "typeofbusiness"
    t.string   "pickuplocation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "farmers", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio"
    t.string   "location"
    t.binary   "picture"
    t.string   "name"
    t.string   "nameofbusiness"
    t.string   "contactnumber"
    t.string   "contactemail"
  end

  create_table "inventories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.decimal  "cost"
    t.decimal  "quantity"
    t.string   "unit"
    t.date     "expirationDate"
    t.string   "growingPractice"
    t.integer  "inventory_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["inventory_id"], name: "index_items_on_inventory_id"

  create_table "legacy_session_table", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "legacy_session_table", ["session_id"], name: "index_legacy_session_table_on_session_id", unique: true
  add_index "legacy_session_table", ["updated_at"], name: "index_legacy_session_table_on_updated_at"

  create_table "new_users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "login",             null: false
    t.string   "crypted_password",  null: false
    t.string   "password_salt",     null: false
    t.string   "persistence_token", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

end
